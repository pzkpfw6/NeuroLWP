.class public final Lorg/kustom/skin/dashboard/glide/GlideOptions;
.super Lcom/bumptech/glide/request/RequestOptions;
.source "GlideOptions.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static centerCropTransform2:Lorg/kustom/skin/dashboard/glide/GlideOptions;

.field private static centerInsideTransform1:Lorg/kustom/skin/dashboard/glide/GlideOptions;

.field private static circleCropTransform3:Lorg/kustom/skin/dashboard/glide/GlideOptions;

.field private static fitCenterTransform0:Lorg/kustom/skin/dashboard/glide/GlideOptions;

.field private static noAnimation5:Lorg/kustom/skin/dashboard/glide/GlideOptions;

.field private static noTransformation4:Lorg/kustom/skin/dashboard/glide/GlideOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    return-void
.end method

.method public static bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lorg/kustom/skin/dashboard/glide/GlideOptions;"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "arg0":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public static centerCropTransform()Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 163
    sget-object v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;->centerCropTransform2:Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    .line 165
    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->centerCrop()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->autoClone()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    sput-object v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;->centerCropTransform2:Lorg/kustom/skin/dashboard/glide/GlideOptions;

    .line 167
    :cond_0
    sget-object v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;->centerCropTransform2:Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public static centerInsideTransform()Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 151
    sget-object v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;->centerInsideTransform1:Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    .line 153
    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->centerInside()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->autoClone()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    sput-object v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;->centerInsideTransform1:Lorg/kustom/skin/dashboard/glide/GlideOptions;

    .line 155
    :cond_0
    sget-object v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;->centerInsideTransform1:Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public static circleCropTransform()Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 175
    sget-object v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;->circleCropTransform3:Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    .line 177
    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->circleCrop()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->autoClone()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    sput-object v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;->circleCropTransform3:Lorg/kustom/skin/dashboard/glide/GlideOptions;

    .line 179
    :cond_0
    sget-object v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;->circleCropTransform3:Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public static decodeTypeOf(Ljava/lang/Class;)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/kustom/skin/dashboard/glide/GlideOptions;"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "arg0":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->decode(Ljava/lang/Class;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public static diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p0, "arg0"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public static downsampleOf(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p0, "arg0"    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 239
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public static encodeFormatOf(Landroid/graphics/Bitmap$CompressFormat;)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p0, "arg0"    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 263
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public static encodeQualityOf(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p0, "arg0"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 255
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->encodeQuality(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public static errorOf(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p0, "arg0"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->error(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public static errorOf(Landroid/graphics/drawable/Drawable;)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p0, "arg0"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->error(Landroid/graphics/drawable/Drawable;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public static fitCenterTransform()Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 139
    sget-object v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;->fitCenterTransform0:Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    .line 141
    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->fitCenter()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->autoClone()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    sput-object v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;->fitCenterTransform0:Lorg/kustom/skin/dashboard/glide/GlideOptions;

    .line 143
    :cond_0
    sget-object v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;->fitCenterTransform0:Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public static formatOf(Lcom/bumptech/glide/load/DecodeFormat;)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p0, "arg0"    # Lcom/bumptech/glide/load/DecodeFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 223
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public static frameOf(J)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 2
    .param p0, "arg0"    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 231
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->frame(J)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public static noAnimation()Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 271
    sget-object v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;->noAnimation5:Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    .line 273
    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->dontAnimate()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->autoClone()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    sput-object v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;->noAnimation5:Lorg/kustom/skin/dashboard/glide/GlideOptions;

    .line 275
    :cond_0
    sget-object v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;->noAnimation5:Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public static noTransformation()Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 195
    sget-object v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;->noTransformation4:Lorg/kustom/skin/dashboard/glide/GlideOptions;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    .line 197
    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->dontTransform()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->autoClone()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    sput-object v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;->noTransformation4:Lorg/kustom/skin/dashboard/glide/GlideOptions;

    .line 199
    :cond_0
    sget-object v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;->noTransformation4:Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public static option(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/Option;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option",
            "<TT;>;TT;)",
            "Lorg/kustom/skin/dashboard/glide/GlideOptions;"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, "arg0":Lcom/bumptech/glide/load/Option;, "Lcom/bumptech/glide/load/Option<TT;>;"
    .local p1, "arg1":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public static overrideOf(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p0, "arg0"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->override(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public static overrideOf(II)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p0, "arg0"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p1, "arg1"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->override(II)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public static placeholderOf(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p0, "arg0"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->placeholder(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public static placeholderOf(Landroid/graphics/drawable/Drawable;)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p0, "arg0"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public static priorityOf(Lcom/bumptech/glide/Priority;)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p0, "arg0"    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->priority(Lcom/bumptech/glide/Priority;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public static signatureOf(Lcom/bumptech/glide/load/Key;)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p0, "arg0"    # Lcom/bumptech/glide/load/Key;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 131
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->signature(Lcom/bumptech/glide/load/Key;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public static sizeMultiplierOf(F)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p0, "arg0"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->sizeMultiplier(F)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public static skipMemoryCacheOf(Z)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p0, "skipMemoryCache"    # Z
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 106
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->skipMemoryCache(Z)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public static timeoutOf(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p0, "arg0"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 247
    new-instance v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    invoke-direct {v0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->timeout(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/RequestOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p1, "arg0"    # Lcom/bumptech/glide/request/RequestOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 578
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic autoClone()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->autoClone()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final autoClone()Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 590
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic centerCrop()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->centerCrop()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final centerCrop()Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 477
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic centerInside()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->centerInside()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final centerInside()Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 505
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->centerInside()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic circleCrop()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->circleCrop()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final circleCrop()Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 519
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->circleCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->clone()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->clone()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 400
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->decode(Ljava/lang/Class;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final decode(Ljava/lang/Class;)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/kustom/skin/dashboard/glide/GlideOptions;"
        }
    .end annotation

    .prologue
    .line 414
    .local p1, "arg0":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic disallowHardwareConfig()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->disallowHardwareConfig()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final disallowHardwareConfig()Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 449
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->disallowHardwareConfig()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p1, "arg0"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 310
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic dontAnimate()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->dontAnimate()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final dontAnimate()Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 571
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->dontAnimate()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic dontTransform()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->dontTransform()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final dontTransform()Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 564
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->dontTransform()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p1, "arg0"    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 456
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p1, "arg0"    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 421
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic encodeQuality(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->encodeQuality(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final encodeQuality(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p1, "arg0"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 428
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->encodeQuality(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic error(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->error(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->error(Landroid/graphics/drawable/Drawable;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final error(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p1, "arg0"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 359
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public final error(Landroid/graphics/drawable/Drawable;)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p1, "arg0"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 352
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic fallback(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->fallback(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->fallback(Landroid/graphics/drawable/Drawable;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final fallback(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p1, "arg0"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 345
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->fallback(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public final fallback(Landroid/graphics/drawable/Drawable;)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p1, "arg0"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 338
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic fitCenter()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->fitCenter()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final fitCenter()Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 491
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->fitCenter()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/DecodeFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final format(Lcom/bumptech/glide/load/DecodeFormat;)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p1, "arg0"    # Lcom/bumptech/glide/load/DecodeFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 442
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic frame(J)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->frame(J)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final frame(J)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p1, "arg0"    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 435
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->frame(J)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic lock()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->lock()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final lock()Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 584
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->lock()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->onlyRetrieveFromCache(Z)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final onlyRetrieveFromCache(Z)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p1, "flag"    # Z
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 303
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic optionalCenterCrop()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->optionalCenterCrop()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final optionalCenterCrop()Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 470
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->optionalCenterCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic optionalCenterInside()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->optionalCenterInside()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final optionalCenterInside()Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 498
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->optionalCenterInside()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic optionalCircleCrop()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->optionalCircleCrop()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final optionalCircleCrop()Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 512
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->optionalCircleCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic optionalFitCenter()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->optionalFitCenter()Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final optionalFitCenter()Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 484
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->optionalFitCenter()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lorg/kustom/skin/dashboard/glide/GlideOptions;"
        }
    .end annotation

    .prologue
    .line 542
    .local p1, "arg0":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public final optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/bumptech/glide/load/Transformation",
            "<TT;>;)",
            "Lorg/kustom/skin/dashboard/glide/GlideOptions;"
        }
    .end annotation

    .prologue
    .line 550
    .local p1, "arg0":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "arg1":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic override(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->override(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic override(II)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->override(II)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final override(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p1, "size"    # I
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 387
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->override(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public final override(II)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 380
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic placeholder(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->placeholder(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final placeholder(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p1, "arg0"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 331
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public final placeholder(Landroid/graphics/drawable/Drawable;)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p1, "arg0"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 324
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->priority(Lcom/bumptech/glide/Priority;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final priority(Lcom/bumptech/glide/Priority;)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p1, "arg0"    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 317
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/Option;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/Option;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option",
            "<TT;>;TT;)",
            "Lorg/kustom/skin/dashboard/glide/GlideOptions;"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, "arg0":Lcom/bumptech/glide/load/Option;, "Lcom/bumptech/glide/load/Option<TT;>;"
    .local p2, "arg1":Ljava/lang/Object;, "TT;"
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/Key;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->signature(Lcom/bumptech/glide/load/Key;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final signature(Lcom/bumptech/glide/load/Key;)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p1, "arg0"    # Lcom/bumptech/glide/load/Key;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 394
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic sizeMultiplier(F)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->sizeMultiplier(F)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final sizeMultiplier(F)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p1, "arg0"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 282
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier(F)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->skipMemoryCache(Z)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final skipMemoryCache(Z)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p1, "skip"    # Z
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 373
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->theme(Landroid/content/res/Resources$Theme;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final theme(Landroid/content/res/Resources$Theme;)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p1, "arg0"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 366
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic timeout(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->timeout(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(I)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p1, "arg0"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 463
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->timeout(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final transform(Lcom/bumptech/glide/load/Transformation;)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lorg/kustom/skin/dashboard/glide/GlideOptions;"
        }
    .end annotation

    .prologue
    .line 526
    .local p1, "arg0":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public final transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/bumptech/glide/load/Transformation",
            "<TT;>;)",
            "Lorg/kustom/skin/dashboard/glide/GlideOptions;"
        }
    .end annotation

    .prologue
    .line 557
    .local p1, "arg0":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "arg1":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # [Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final varargs transforms([Lcom/bumptech/glide/load/Transformation;)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p1    # [Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lorg/kustom/skin/dashboard/glide/GlideOptions;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 535
    .local p1, "arg0":[Lcom/bumptech/glide/load/Transformation;, "[Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic useAnimationPool(Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->useAnimationPool(Z)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final useAnimationPool(Z)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p1, "flag"    # Z
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 296
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->useAnimationPool(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/kustom/skin/dashboard/glide/GlideOptions;->useUnlimitedSourceGeneratorsPool(Z)Lorg/kustom/skin/dashboard/glide/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final useUnlimitedSourceGeneratorsPool(Z)Lorg/kustom/skin/dashboard/glide/GlideOptions;
    .locals 1
    .param p1, "flag"    # Z
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 289
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/kustom/skin/dashboard/glide/GlideOptions;

    return-object v0
.end method
