.class public Lorg/kustom/api/preset/glide/PresetFileDataFetcher;
.super Ljava/lang/Object;
.source "PresetFileDataFetcher.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLandscape:Z

.field private final mPresetFile:Lorg/kustom/api/preset/PresetFile;

.field private mZipStream:Ljava/util/zip/ZipInputStream;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/kustom/api/preset/PresetFile;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "file"    # Lorg/kustom/api/preset/PresetFile;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/kustom/api/preset/glide/PresetFileDataFetcher;->mZipStream:Ljava/util/zip/ZipInputStream;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/kustom/api/preset/glide/PresetFileDataFetcher;->mLandscape:Z

    .line 24
    iput-object p1, p0, Lorg/kustom/api/preset/glide/PresetFileDataFetcher;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lorg/kustom/api/preset/glide/PresetFileDataFetcher;->mPresetFile:Lorg/kustom/api/preset/PresetFile;

    .line 26
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/kustom/api/preset/glide/PresetFileDataFetcher;->mZipStream:Ljava/util/zip/ZipInputStream;

    if-eqz v0, :cond_0

    .line 55
    :try_start_0
    iget-object v0, p0, Lorg/kustom/api/preset/glide/PresetFileDataFetcher;->mZipStream:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public getDataSource()Lcom/bumptech/glide/load/DataSource;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .locals 7
    .param p1, "priority"    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback",
            "<-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "callback":Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;, "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<-Ljava/io/InputStream;>;"
    const-string v4, "komp"

    iget-object v5, p0, Lorg/kustom/api/preset/glide/PresetFileDataFetcher;->mPresetFile:Lorg/kustom/api/preset/PresetFile;

    invoke-virtual {v5}, Lorg/kustom/api/preset/PresetFile;->getExt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v2, "komponent_thumb.jpg"

    .line 35
    .local v2, "thumb":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipInputStream;

    iget-object v5, p0, Lorg/kustom/api/preset/glide/PresetFileDataFetcher;->mPresetFile:Lorg/kustom/api/preset/PresetFile;

    iget-object v6, p0, Lorg/kustom/api/preset/glide/PresetFileDataFetcher;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lorg/kustom/api/preset/PresetFile;->getStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Lorg/kustom/api/preset/glide/PresetFileDataFetcher;->mZipStream:Ljava/util/zip/ZipInputStream;

    .line 37
    const/4 v1, 0x0

    .line 38
    .local v1, "found":Z
    :cond_0
    iget-object v4, p0, Lorg/kustom/api/preset/glide/PresetFileDataFetcher;->mZipStream:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    .local v3, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v3, :cond_1

    .line 39
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    iget-object v4, p0, Lorg/kustom/api/preset/glide/PresetFileDataFetcher;->mZipStream:Ljava/util/zip/ZipInputStream;

    invoke-interface {p2, v4}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    .line 41
    const/4 v1, 0x1

    .line 45
    :cond_1
    if-nez v1, :cond_2

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Thumbnail not found"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v1    # "found":Z
    .end local v3    # "ze":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    invoke-interface {p2, v0}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    .line 50
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return-void

    .line 32
    .end local v2    # "thumb":Ljava/lang/String;
    :cond_3
    iget-boolean v4, p0, Lorg/kustom/api/preset/glide/PresetFileDataFetcher;->mLandscape:Z

    if-eqz v4, :cond_4

    const-string v2, "preset_thumb_landscape.jpg"

    .restart local v2    # "thumb":Ljava/lang/String;
    goto :goto_0

    .line 33
    .end local v2    # "thumb":Ljava/lang/String;
    :cond_4
    const-string v2, "preset_thumb_portrait.jpg"

    .restart local v2    # "thumb":Ljava/lang/String;
    goto :goto_0
.end method

.method setLandscape(Z)Lorg/kustom/api/preset/glide/PresetFileDataFetcher;
    .locals 0
    .param p1, "landscape"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lorg/kustom/api/preset/glide/PresetFileDataFetcher;->mLandscape:Z

    .line 78
    return-object p0
.end method
