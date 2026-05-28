.class public final Lcom/bumptech/glide/load/ImageHeaderParserUtils;
.super Ljava/lang/Object;
.source "ImageHeaderParserUtils.java"


# static fields
.field private static final MARK_POSITION:I = 0x500000


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrientation(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "byteArrayPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "parsers":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/ImageHeaderParser;>;"
    const/4 v5, -0x1

    .line 72
    if-nez p1, :cond_0

    move v2, v5

    .line 94
    :goto_0
    return v2

    .line 76
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v6

    if-nez v6, :cond_1

    .line 77
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    invoke-direct {v1, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .end local p1    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    move-object p1, v1

    .line 80
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local p1    # "is":Ljava/io/InputStream;
    :cond_1
    const/high16 v6, 0x500000

    invoke-virtual {p1, v6}, Ljava/io/InputStream;->mark(I)V

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_1
    if-ge v0, v4, :cond_3

    .line 83
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/ImageHeaderParser;

    .line 85
    .local v3, "parser":Lcom/bumptech/glide/load/ImageHeaderParser;
    :try_start_0
    invoke-interface {v3, p1, p2}, Lcom/bumptech/glide/load/ImageHeaderParser;->getOrientation(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 86
    .local v2, "orientation":I
    if-eq v2, v5, :cond_2

    .line 90
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    .end local v2    # "orientation":I
    :catchall_0
    move-exception v5

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    throw v5

    .end local v3    # "parser":Lcom/bumptech/glide/load/ImageHeaderParser;
    :cond_3
    move v2, v5

    .line 94
    goto :goto_0
.end method

.method public static getType(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "byteArrayPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")",
            "Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "parsers":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/ImageHeaderParser;>;"
    if-nez p1, :cond_0

    .line 26
    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 47
    :goto_0
    return-object v4

    .line 29
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v5

    if-nez v5, :cond_1

    .line 30
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    invoke-direct {v1, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .end local p1    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    move-object p1, v1

    .line 33
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local p1    # "is":Ljava/io/InputStream;
    :cond_1
    const/high16 v5, 0x500000

    invoke-virtual {p1, v5}, Ljava/io/InputStream;->mark(I)V

    .line 35
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 36
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/ImageHeaderParser;

    .line 38
    .local v2, "parser":Lcom/bumptech/glide/load/ImageHeaderParser;
    :try_start_0
    invoke-interface {v2, p1}, Lcom/bumptech/glide/load/ImageHeaderParser;->getType(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v4

    .line 39
    .local v4, "type":Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    sget-object v5, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v4, v5, :cond_2

    .line 43
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 43
    .end local v4    # "type":Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    :catchall_0
    move-exception v5

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    throw v5

    .line 47
    .end local v2    # "parser":Lcom/bumptech/glide/load/ImageHeaderParser;
    :cond_3
    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    goto :goto_0
.end method

.method public static getType(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "parsers":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/ImageHeaderParser;>;"
    if-nez p1, :cond_1

    .line 54
    sget-object v3, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 66
    :cond_0
    :goto_0
    return-object v3

    .line 58
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 59
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/ImageHeaderParser;

    .line 60
    .local v1, "parser":Lcom/bumptech/glide/load/ImageHeaderParser;
    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/ImageHeaderParser;->getType(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v3

    .line 61
    .local v3, "type":Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v3, v4, :cond_0

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    .end local v1    # "parser":Lcom/bumptech/glide/load/ImageHeaderParser;
    .end local v3    # "type":Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    :cond_2
    sget-object v3, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    goto :goto_0
.end method
