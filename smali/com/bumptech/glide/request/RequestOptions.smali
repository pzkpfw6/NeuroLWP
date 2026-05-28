.class public Lcom/bumptech/glide/request/RequestOptions;
.super Ljava/lang/Object;
.source "RequestOptions.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DISK_CACHE_STRATEGY:I = 0x4

.field private static final ERROR_ID:I = 0x20

.field private static final ERROR_PLACEHOLDER:I = 0x10

.field private static final FALLBACK:I = 0x2000

.field private static final FALLBACK_ID:I = 0x4000

.field private static final IS_CACHEABLE:I = 0x100

.field private static final ONLY_RETRIEVE_FROM_CACHE:I = 0x80000

.field private static final OVERRIDE:I = 0x200

.field private static final PLACEHOLDER:I = 0x40

.field private static final PLACEHOLDER_ID:I = 0x80

.field private static final PRIORITY:I = 0x8

.field private static final RESOURCE_CLASS:I = 0x1000

.field private static final SIGNATURE:I = 0x400

.field private static final SIZE_MULTIPLIER:I = 0x2

.field private static final THEME:I = 0x8000

.field private static final TRANSFORMATION:I = 0x800

.field private static final TRANSFORMATION_ALLOWED:I = 0x10000

.field private static final TRANSFORMATION_REQUIRED:I = 0x20000

.field private static final UNSET:I = -0x1

.field private static final USE_ANIMATION_POOL:I = 0x100000

.field private static final USE_UNLIMITED_SOURCE_GENERATORS_POOL:I = 0x40000

.field private static centerCropOptions:Lcom/bumptech/glide/request/RequestOptions;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static centerInsideOptions:Lcom/bumptech/glide/request/RequestOptions;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static circleCropOptions:Lcom/bumptech/glide/request/RequestOptions;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static fitCenterOptions:Lcom/bumptech/glide/request/RequestOptions;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static noAnimationOptions:Lcom/bumptech/glide/request/RequestOptions;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static noTransformOptions:Lcom/bumptech/glide/request/RequestOptions;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static skipMemoryCacheFalseOptions:Lcom/bumptech/glide/request/RequestOptions;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static skipMemoryCacheTrueOptions:Lcom/bumptech/glide/request/RequestOptions;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private errorId:I

.field private errorPlaceholder:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private fallbackDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private fallbackId:I

.field private fields:I

.field private isAutoCloneEnabled:Z

.field private isCacheable:Z

.field private isLocked:Z

.field private isScaleOnlyOrNoTransform:Z

.field private isTransformationAllowed:Z

.field private isTransformationRequired:Z

.field private onlyRetrieveFromCache:Z

.field private options:Lcom/bumptech/glide/load/Options;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private overrideHeight:I

.field private overrideWidth:I

.field private placeholderDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private placeholderId:I

.field private priority:Lcom/bumptech/glide/Priority;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private resourceClass:Ljava/lang/Class;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private signature:Lcom/bumptech/glide/load/Key;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private sizeMultiplier:F

.field private theme:Landroid/content/res/Resources$Theme;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private transformations:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/load/Transformation",
            "<*>;>;"
        }
    .end annotation
.end field

.field private useAnimationPool:Z

.field private useUnlimitedSourceGeneratorsPool:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier:F

    .line 86
    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->AUTOMATIC:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 88
    sget-object v0, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->priority:Lcom/bumptech/glide/Priority;

    .line 96
    iput-boolean v1, p0, Lcom/bumptech/glide/request/RequestOptions;->isCacheable:Z

    .line 97
    iput v2, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideHeight:I

    .line 98
    iput v2, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideWidth:I

    .line 100
    invoke-static {}, Lcom/bumptech/glide/signature/EmptySignature;->obtain()Lcom/bumptech/glide/signature/EmptySignature;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->signature:Lcom/bumptech/glide/load/Key;

    .line 102
    iput-boolean v1, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationAllowed:Z

    .line 106
    new-instance v0, Lcom/bumptech/glide/load/Options;

    invoke-direct {v0}, Lcom/bumptech/glide/load/Options;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->options:Lcom/bumptech/glide/load/Options;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    .line 110
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->resourceClass:Ljava/lang/Class;

    .line 118
    iput-boolean v1, p0, Lcom/bumptech/glide/request/RequestOptions;->isScaleOnlyOrNoTransform:Z

    return-void
.end method

.method public static bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/Transformation;
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
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public static centerCropTransform()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 274
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->centerCropOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 276
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/RequestOptions;->centerCropOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 279
    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->centerCropOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object v0
.end method

.method public static centerInsideTransform()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 259
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->centerInsideOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 261
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->centerInside()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/RequestOptions;->centerInsideOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 264
    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->centerInsideOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object v0
.end method

.method public static circleCropTransform()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 289
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->circleCropOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 291
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->circleCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/RequestOptions;->circleCropOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 294
    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->circleCropOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object v0
.end method

.method public static decodeTypeOf(Ljava/lang/Class;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0    # Ljava/lang/Class;
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
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .prologue
    .line 338
    .local p0, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public static diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0, "diskCacheStrategy"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 138
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public static downsampleOf(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0, "strategy"    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 368
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public static encodeFormatOf(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0, "format"    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 399
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public static encodeQualityOf(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0, "quality"    # I
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
    .line 388
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->encodeQuality(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public static errorOf(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0, "errorId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 184
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public static errorOf(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0, "errorDrawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 175
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public static fitCenterTransform()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 244
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->fitCenterOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 246
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->fitCenter()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/RequestOptions;->fitCenterOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 249
    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->fitCenterOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object v0
.end method

.method public static formatOf(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0, "format"    # Lcom/bumptech/glide/load/DecodeFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 348
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public static frameOf(J)Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .param p0, "frameTimeMicros"    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 358
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->frame(J)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method private isSet(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 1651
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    invoke-static {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    return v0
.end method

.method private static isSet(II)Z
    .locals 1
    .param p0, "fields"    # I
    .param p1, "flag"    # I

    .prologue
    .line 419
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static noAnimation()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 410
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->noAnimationOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 412
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->dontAnimate()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 413
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/RequestOptions;->noAnimationOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 415
    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->noAnimationOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object v0
.end method

.method public static noTransformation()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 314
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->noTransformOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 316
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->dontTransform()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/RequestOptions;->noTransformOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 319
    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->noTransformOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object v0
.end method

.method public static option(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;
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

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option",
            "<TT;>;TT;)",
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .prologue
    .line 329
    .local p0, "option":Lcom/bumptech/glide/load/Option;, "Lcom/bumptech/glide/load/Option<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method private optionalScaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1, "strategy"    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .prologue
    .line 1154
    .local p2, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/request/RequestOptions;->scaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public static overrideOf(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0, "size"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 226
    invoke-static {p0, p0}, Lcom/bumptech/glide/request/RequestOptions;->overrideOf(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public static overrideOf(II)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0, "width"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p1, "height"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 215
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public static placeholderOf(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0, "placeholderId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 166
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public static placeholderOf(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0, "placeholder"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 157
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public static priorityOf(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0, "priority"    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 148
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method private scaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1, "strategy"    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .prologue
    .line 1148
    .local p2, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/request/RequestOptions;->scaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method private scaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .param p1, "strategy"    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "isTransformationRequired"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;Z)",
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .prologue
    .line 1162
    .local p2, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    if-eqz p3, :cond_0

    .line 1163
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 1164
    .local v0, "result":Lcom/bumptech/glide/request/RequestOptions;
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bumptech/glide/request/RequestOptions;->isScaleOnlyOrNoTransform:Z

    .line 1165
    return-object v0

    .line 1163
    .end local v0    # "result":Lcom/bumptech/glide/request/RequestOptions;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->optionalTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    goto :goto_0
.end method

.method private selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1530
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isLocked:Z

    if-eqz v0, :cond_0

    .line 1531
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot modify locked RequestOptions, consider clone()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1533
    :cond_0
    return-object p0
.end method

.method public static signatureOf(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0, "signature"    # Lcom/bumptech/glide/load/Key;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 235
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public static sizeMultiplierOf(F)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0, "sizeMultiplier"    # F
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
    .line 129
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier(F)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public static skipMemoryCacheOf(Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .param p0, "skipMemoryCache"    # Z
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 193
    if-eqz p0, :cond_1

    .line 194
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCacheTrueOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCacheTrueOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 197
    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCacheTrueOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 202
    :goto_0
    return-object v0

    .line 199
    :cond_1
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCacheFalseOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v0, :cond_2

    .line 200
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCacheFalseOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 202
    :cond_2
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCacheFalseOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0
.end method

.method public static timeoutOf(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0, "timeout"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 377
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->timeout(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method private transform(Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 3
    .param p1    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "isRequired"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;Z)",
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .prologue
    .line 1233
    .local p1, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    iget-boolean v1, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v1, :cond_0

    .line 1234
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-direct {v1, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    .line 1247
    :goto_0
    return-object v1

    .line 1237
    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/DrawableTransformation;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/DrawableTransformation;-><init>(Lcom/bumptech/glide/load/Transformation;Z)V

    .line 1239
    .local v0, "drawableTransformation":Lcom/bumptech/glide/load/resource/bitmap/DrawableTransformation;
    const-class v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;

    .line 1240
    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0, p2}, Lcom/bumptech/glide/request/RequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;

    .line 1245
    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/DrawableTransformation;->asBitmapDrawable()Lcom/bumptech/glide/load/Transformation;

    move-result-object v2

    invoke-direct {p0, v1, v2, p2}, Lcom/bumptech/glide/request/RequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;

    .line 1246
    const-class v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    new-instance v2, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;

    invoke-direct {v2, p1}, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;-><init>(Lcom/bumptech/glide/load/Transformation;)V

    invoke-direct {p0, v1, v2, p2}, Lcom/bumptech/glide/request/RequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;

    .line 1247
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    goto :goto_0
.end method

.method private transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "isRequired"    # Z
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
            "<TT;>;Z)",
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .prologue
    .local p1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TT;>;"
    const/4 v2, 0x1

    .line 1279
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 1280
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-direct {v0, p1, p2, p3}, Lcom/bumptech/glide/request/RequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 1296
    :goto_0
    return-object v0

    .line 1283
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    invoke-static {p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 1287
    iput-boolean v2, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationAllowed:Z

    .line 1288
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 1291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isScaleOnlyOrNoTransform:Z

    .line 1292
    if-eqz p3, :cond_1

    .line 1293
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 1294
    iput-boolean v2, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationRequired:Z

    .line 1296
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .param p1, "other"    # Lcom/bumptech/glide/request/RequestOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1358
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 1359
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 1437
    :goto_0
    return-object v0

    .line 1362
    :cond_0
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1363
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier:F

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier:F

    .line 1365
    :cond_1
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1366
    iget-boolean v0, p1, Lcom/bumptech/glide/request/RequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    .line 1368
    :cond_2
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1369
    iget-boolean v0, p1, Lcom/bumptech/glide/request/RequestOptions;->useAnimationPool:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->useAnimationPool:Z

    .line 1371
    :cond_3
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1372
    iget-object v0, p1, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 1374
    :cond_4
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1375
    iget-object v0, p1, Lcom/bumptech/glide/request/RequestOptions;->priority:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->priority:Lcom/bumptech/glide/Priority;

    .line 1377
    :cond_5
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1378
    iget-object v0, p1, Lcom/bumptech/glide/request/RequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    .line 1380
    :cond_6
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1381
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->errorId:I

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->errorId:I

    .line 1383
    :cond_7
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1384
    iget-object v0, p1, Lcom/bumptech/glide/request/RequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 1386
    :cond_8
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1387
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->placeholderId:I

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderId:I

    .line 1389
    :cond_9
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1390
    iget-boolean v0, p1, Lcom/bumptech/glide/request/RequestOptions;->isCacheable:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isCacheable:Z

    .line 1392
    :cond_a
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v1, 0x200

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1393
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->overrideWidth:I

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideWidth:I

    .line 1394
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->overrideHeight:I

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideHeight:I

    .line 1396
    :cond_b
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v1, 0x400

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1397
    iget-object v0, p1, Lcom/bumptech/glide/request/RequestOptions;->signature:Lcom/bumptech/glide/load/Key;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->signature:Lcom/bumptech/glide/load/Key;

    .line 1399
    :cond_c
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1400
    iget-object v0, p1, Lcom/bumptech/glide/request/RequestOptions;->resourceClass:Ljava/lang/Class;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->resourceClass:Ljava/lang/Class;

    .line 1402
    :cond_d
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1403
    iget-object v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 1405
    :cond_e
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1406
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fallbackId:I

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackId:I

    .line 1408
    :cond_f
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const v1, 0x8000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1409
    iget-object v0, p1, Lcom/bumptech/glide/request/RequestOptions;->theme:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->theme:Landroid/content/res/Resources$Theme;

    .line 1411
    :cond_10
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1412
    iget-boolean v0, p1, Lcom/bumptech/glide/request/RequestOptions;->isTransformationAllowed:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationAllowed:Z

    .line 1414
    :cond_11
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/high16 v1, 0x20000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1415
    iget-boolean v0, p1, Lcom/bumptech/glide/request/RequestOptions;->isTransformationRequired:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationRequired:Z

    .line 1417
    :cond_12
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1418
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    iget-object v1, p1, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1419
    iget-boolean v0, p1, Lcom/bumptech/glide/request/RequestOptions;->isScaleOnlyOrNoTransform:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isScaleOnlyOrNoTransform:Z

    .line 1421
    :cond_13
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/high16 v1, 0x80000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1422
    iget-boolean v0, p1, Lcom/bumptech/glide/request/RequestOptions;->onlyRetrieveFromCache:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->onlyRetrieveFromCache:Z

    .line 1426
    :cond_14
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationAllowed:Z

    if-nez v0, :cond_15

    .line 1427
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1428
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 1429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationRequired:Z

    .line 1430
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 1431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isScaleOnlyOrNoTransform:Z

    .line 1434
    :cond_15
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    iget v1, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 1435
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->options:Lcom/bumptech/glide/load/Options;

    iget-object v1, p1, Lcom/bumptech/glide/request/RequestOptions;->options:Lcom/bumptech/glide/load/Options;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/Options;->putAll(Lcom/bumptech/glide/load/Options;)V

    .line 1437
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public autoClone()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1519
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isLocked:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-nez v0, :cond_0

    .line 1520
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1523
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    .line 1524
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->lock()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public centerCrop()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1018
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_OUTSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public centerInside()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1084
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_INSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->scaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public circleCrop()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1113
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_INSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/bumptech/glide/request/RequestOptions;
    .locals 4
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 822
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    .line 823
    .local v1, "result":Lcom/bumptech/glide/request/RequestOptions;
    new-instance v2, Lcom/bumptech/glide/load/Options;

    invoke-direct {v2}, Lcom/bumptech/glide/load/Options;-><init>()V

    iput-object v2, v1, Lcom/bumptech/glide/request/RequestOptions;->options:Lcom/bumptech/glide/load/Options;

    .line 824
    iget-object v2, v1, Lcom/bumptech/glide/request/RequestOptions;->options:Lcom/bumptech/glide/load/Options;

    iget-object v3, p0, Lcom/bumptech/glide/request/RequestOptions;->options:Lcom/bumptech/glide/load/Options;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/Options;->putAll(Lcom/bumptech/glide/load/Options;)V

    .line 825
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    .line 826
    iget-object v2, v1, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    iget-object v3, p0, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 827
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/bumptech/glide/request/RequestOptions;->isLocked:Z

    .line 828
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    return-object v1

    .line 830
    .end local v1    # "result":Lcom/bumptech/glide/request/RequestOptions;
    :catch_0
    move-exception v0

    .line 831
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
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
    .line 43
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/RequestOptions;
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
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .prologue
    .line 851
    .local p1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 852
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 857
    :goto_0
    return-object v0

    .line 855
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->resourceClass:Ljava/lang/Class;

    .line 856
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 857
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    goto :goto_0
.end method

.method public disallowHardwareConfig()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 958
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/Option;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1, "strategy"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 539
    :goto_0
    return-object v0

    .line 536
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 537
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 539
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    goto :goto_0
.end method

.method public dontAnimate()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1352
    sget-object v0, Lcom/bumptech/glide/load/resource/gif/GifOptions;->DISABLE_ANIMATION:Lcom/bumptech/glide/load/Option;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public dontTransform()Lcom/bumptech/glide/request/RequestOptions;
    .locals 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1326
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 1327
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->dontTransform()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 1337
    :goto_0
    return-object v0

    .line 1330
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1331
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 1332
    iput-boolean v2, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationRequired:Z

    .line 1333
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 1334
    iput-boolean v2, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationAllowed:Z

    .line 1335
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 1336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isScaleOnlyOrNoTransform:Z

    .line 1337
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    goto :goto_0
.end method

.method public downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .param p1, "strategy"    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 971
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->DOWNSAMPLE_STRATEGY:Lcom/bumptech/glide/load/Option;

    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 879
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->COMPRESSION_FORMAT:Lcom/bumptech/glide/load/Option;

    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public encodeQuality(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .param p1, "quality"    # I
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
    .line 889
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->COMPRESSION_QUALITY:Lcom/bumptech/glide/load/Option;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1443
    instance-of v2, p1, Lcom/bumptech/glide/request/RequestOptions;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 1444
    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 1445
    .local v0, "other":Lcom/bumptech/glide/request/RequestOptions;
    iget v2, v0, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier:F

    iget v3, p0, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/bumptech/glide/request/RequestOptions;->errorId:I

    iget v3, v0, Lcom/bumptech/glide/request/RequestOptions;->errorId:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/request/RequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Lcom/bumptech/glide/request/RequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    .line 1447
    invoke-static {v2, v3}, Lcom/bumptech/glide/util/Util;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderId:I

    iget v3, v0, Lcom/bumptech/glide/request/RequestOptions;->placeholderId:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Lcom/bumptech/glide/request/RequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 1449
    invoke-static {v2, v3}, Lcom/bumptech/glide/util/Util;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackId:I

    iget v3, v0, Lcom/bumptech/glide/request/RequestOptions;->fallbackId:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Lcom/bumptech/glide/request/RequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 1451
    invoke-static {v2, v3}, Lcom/bumptech/glide/util/Util;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/bumptech/glide/request/RequestOptions;->isCacheable:Z

    iget-boolean v3, v0, Lcom/bumptech/glide/request/RequestOptions;->isCacheable:Z

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideHeight:I

    iget v3, v0, Lcom/bumptech/glide/request/RequestOptions;->overrideHeight:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideWidth:I

    iget v3, v0, Lcom/bumptech/glide/request/RequestOptions;->overrideWidth:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationRequired:Z

    iget-boolean v3, v0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationRequired:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationAllowed:Z

    iget-boolean v3, v0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationAllowed:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/bumptech/glide/request/RequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    iget-boolean v3, v0, Lcom/bumptech/glide/request/RequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/bumptech/glide/request/RequestOptions;->onlyRetrieveFromCache:Z

    iget-boolean v3, v0, Lcom/bumptech/glide/request/RequestOptions;->onlyRetrieveFromCache:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    iget-object v3, v0, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 1459
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/request/RequestOptions;->priority:Lcom/bumptech/glide/Priority;

    iget-object v3, v0, Lcom/bumptech/glide/request/RequestOptions;->priority:Lcom/bumptech/glide/Priority;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/request/RequestOptions;->options:Lcom/bumptech/glide/load/Options;

    iget-object v3, v0, Lcom/bumptech/glide/request/RequestOptions;->options:Lcom/bumptech/glide/load/Options;

    .line 1461
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/Options;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    iget-object v3, v0, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    .line 1462
    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/request/RequestOptions;->resourceClass:Ljava/lang/Class;

    iget-object v3, v0, Lcom/bumptech/glide/request/RequestOptions;->resourceClass:Ljava/lang/Class;

    .line 1463
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/request/RequestOptions;->signature:Lcom/bumptech/glide/load/Key;

    iget-object v3, v0, Lcom/bumptech/glide/request/RequestOptions;->signature:Lcom/bumptech/glide/load/Key;

    .line 1464
    invoke-static {v2, v3}, Lcom/bumptech/glide/util/Util;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/request/RequestOptions;->theme:Landroid/content/res/Resources$Theme;

    iget-object v3, v0, Lcom/bumptech/glide/request/RequestOptions;->theme:Landroid/content/res/Resources$Theme;

    .line 1465
    invoke-static {v2, v3}, Lcom/bumptech/glide/util/Util;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 1467
    .end local v0    # "other":Lcom/bumptech/glide/request/RequestOptions;
    :cond_0
    return v1
.end method

.method public error(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1, "resourceId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 680
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 681
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 686
    :goto_0
    return-object v0

    .line 683
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->errorId:I

    .line 684
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 686
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    goto :goto_0
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 661
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 668
    :goto_0
    return-object v0

    .line 665
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    .line 666
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 668
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    goto :goto_0
.end method

.method public fallback(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1, "resourceId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 642
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 643
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->fallback(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 649
    :goto_0
    return-object v0

    .line 646
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackId:I

    .line 647
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 649
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    goto :goto_0
.end method

.method public fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 617
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 623
    :goto_0
    return-object v0

    .line 620
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 621
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 623
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    goto :goto_0
.end method

.method public fitCenter()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1052
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->FIT_CENTER:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->scaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .param p1, "format"    # Lcom/bumptech/glide/load/DecodeFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 933
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->DECODE_FORMAT:Lcom/bumptech/glide/load/Option;

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/resource/gif/GifOptions;->DECODE_FORMAT:Lcom/bumptech/glide/load/Option;

    .line 935
    invoke-virtual {v0, v1, p1}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 934
    return-object v0
.end method

.method public frame(J)Lcom/bumptech/glide/request/RequestOptions;
    .locals 3
    .param p1, "frameTimeMicros"    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 905
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->TARGET_FRAME:Lcom/bumptech/glide/load/Option;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getDiskCacheStrategy()Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    return-object v0
.end method

.method public final getErrorId()I
    .locals 1

    .prologue
    .line 1581
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->errorId:I

    return v0
.end method

.method public final getErrorPlaceholder()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getFallbackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getFallbackId()I
    .locals 1

    .prologue
    .line 1597
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackId:I

    return v0
.end method

.method public final getOnlyRetrieveFromCache()Z
    .locals 1

    .prologue
    .line 1669
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->onlyRetrieveFromCache:Z

    return v0
.end method

.method public final getOptions()Lcom/bumptech/glide/load/Options;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->options:Lcom/bumptech/glide/load/Options;

    return-object v0
.end method

.method public final getOverrideHeight()I
    .locals 1

    .prologue
    .line 1639
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideHeight:I

    return v0
.end method

.method public final getOverrideWidth()I
    .locals 1

    .prologue
    .line 1631
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideWidth:I

    return v0
.end method

.method public final getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getPlaceholderId()I
    .locals 1

    .prologue
    .line 1586
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderId:I

    return v0
.end method

.method public final getPriority()Lcom/bumptech/glide/Priority;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->priority:Lcom/bumptech/glide/Priority;

    return-object v0
.end method

.method public final getResourceClass()Ljava/lang/Class;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->resourceClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final getSignature()Lcom/bumptech/glide/load/Key;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->signature:Lcom/bumptech/glide/load/Key;

    return-object v0
.end method

.method public final getSizeMultiplier()F
    .locals 1

    .prologue
    .line 1643
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier:F

    return v0
.end method

.method public final getTheme()Landroid/content/res/Resources$Theme;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->theme:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public final getTransformations()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/load/Transformation",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    return-object v0
.end method

.method public final getUseAnimationPool()Z
    .locals 1

    .prologue
    .line 1663
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->useAnimationPool:Z

    return v0
.end method

.method public final getUseUnlimitedSourceGeneratorsPool()Z
    .locals 1

    .prologue
    .line 1657
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1472
    iget v1, p0, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier:F

    invoke-static {v1}, Lcom/bumptech/glide/util/Util;->hashCode(F)I

    move-result v0

    .line 1473
    .local v0, "hashCode":I
    iget v1, p0, Lcom/bumptech/glide/request/RequestOptions;->errorId:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result v0

    .line 1474
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1475
    iget v1, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderId:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result v0

    .line 1476
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1477
    iget v1, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackId:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result v0

    .line 1478
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1479
    iget-boolean v1, p0, Lcom/bumptech/glide/request/RequestOptions;->isCacheable:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(ZI)I

    move-result v0

    .line 1480
    iget v1, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideHeight:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result v0

    .line 1481
    iget v1, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideWidth:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result v0

    .line 1482
    iget-boolean v1, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationRequired:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(ZI)I

    move-result v0

    .line 1483
    iget-boolean v1, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationAllowed:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(ZI)I

    move-result v0

    .line 1484
    iget-boolean v1, p0, Lcom/bumptech/glide/request/RequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(ZI)I

    move-result v0

    .line 1485
    iget-boolean v1, p0, Lcom/bumptech/glide/request/RequestOptions;->onlyRetrieveFromCache:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(ZI)I

    move-result v0

    .line 1486
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1487
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->priority:Lcom/bumptech/glide/Priority;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1488
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->options:Lcom/bumptech/glide/load/Options;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1489
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1490
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->resourceClass:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1491
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->signature:Lcom/bumptech/glide/load/Key;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1492
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->theme:Landroid/content/res/Resources$Theme;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1493
    return v0
.end method

.method protected isAutoCloneEnabled()Z
    .locals 1

    .prologue
    .line 1537
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    return v0
.end method

.method public final isDiskCacheStrategySet()Z
    .locals 1

    .prologue
    .line 1541
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/RequestOptions;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public final isLocked()Z
    .locals 1

    .prologue
    .line 869
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isLocked:Z

    return v0
.end method

.method public final isMemoryCacheable()Z
    .locals 1

    .prologue
    .line 1613
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isCacheable:Z

    return v0
.end method

.method public final isPrioritySet()Z
    .locals 1

    .prologue
    .line 1622
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/RequestOptions;->isSet(I)Z

    move-result v0

    return v0
.end method

.method isScaleOnlyOrNoTransform()Z
    .locals 1

    .prologue
    .line 1647
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isScaleOnlyOrNoTransform:Z

    return v0
.end method

.method public final isSkipMemoryCacheSet()Z
    .locals 1

    .prologue
    .line 1545
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/RequestOptions;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public final isTransformationAllowed()Z
    .locals 1

    .prologue
    .line 861
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationAllowed:Z

    return v0
.end method

.method public final isTransformationRequired()Z
    .locals 1

    .prologue
    .line 1555
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationRequired:Z

    return v0
.end method

.method public final isTransformationSet()Z
    .locals 1

    .prologue
    .line 865
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/RequestOptions;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public final isValidOverride()Z
    .locals 2

    .prologue
    .line 1635
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideWidth:I

    iget v1, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideHeight:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v0

    return v0
.end method

.method public lock()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isLocked:Z

    .line 1506
    return-object p0
.end method

.method public onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .param p1, "flag"    # Z
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 513
    :goto_0
    return-object v0

    .line 510
    :cond_0
    iput-boolean p1, p0, Lcom/bumptech/glide/request/RequestOptions;->onlyRetrieveFromCache:Z

    .line 511
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 513
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    goto :goto_0
.end method

.method public optionalCenterCrop()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1003
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_OUTSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->optionalTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public optionalCenterInside()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1068
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_INSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->optionalScaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public optionalCircleCrop()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1098
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_OUTSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->optionalTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public optionalFitCenter()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1035
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->FIT_CENTER:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->optionalScaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
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
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .prologue
    .line 1227
    .local p1, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method final optionalTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1, "downsampleStrategy"    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .prologue
    .line 1122
    .local p2, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 1123
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->optionalTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 1127
    :goto_0
    return-object v0

    .line 1126
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    .line 1127
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    goto :goto_0
.end method

.method public optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
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
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .prologue
    .line 1271
    .local p1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/request/RequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public override(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1, "size"    # I
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 776
    invoke-virtual {p0, p1, p1}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public override(II)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 754
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 755
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 762
    :goto_0
    return-object v0

    .line 758
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideWidth:I

    .line 759
    iput p2, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideHeight:I

    .line 760
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 762
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    goto :goto_0
.end method

.method public placeholder(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1, "resourceId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 597
    :goto_0
    return-object v0

    .line 594
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderId:I

    .line 595
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 597
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    goto :goto_0
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 570
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 577
    :goto_0
    return-object v0

    .line 574
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 575
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 577
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    goto :goto_0
.end method

.method public priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1, "priority"    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 558
    :goto_0
    return-object v0

    .line 555
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->priority:Lcom/bumptech/glide/Priority;

    .line 556
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 558
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    goto :goto_0
.end method

.method public set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;
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
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .prologue
    .line 838
    .local p1, "option":Lcom/bumptech/glide/load/Option;, "Lcom/bumptech/glide/load/Option<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 839
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 845
    :goto_0
    return-object v0

    .line 842
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    invoke-static {p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->options:Lcom/bumptech/glide/load/Options;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/Options;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/load/Options;

    .line 845
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    goto :goto_0
.end method

.method public signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1, "signature"    # Lcom/bumptech/glide/load/Key;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 793
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 794
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 799
    :goto_0
    return-object v0

    .line 797
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/Key;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->signature:Lcom/bumptech/glide/load/Key;

    .line 798
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 799
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    goto :goto_0
.end method

.method public sizeMultiplier(F)Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .param p1, "sizeMultiplier"    # F
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
    .line 435
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier(F)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 445
    :goto_0
    return-object v0

    .line 439
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 440
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sizeMultiplier must be between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_2
    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier:F

    .line 443
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 445
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    goto :goto_0
.end method

.method public skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .param p1, "skip"    # Z
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 732
    iget-boolean v1, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v1, :cond_0

    .line 733
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 739
    :goto_0
    return-object v0

    .line 736
    :cond_0
    if-nez p1, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isCacheable:Z

    .line 737
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 739
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    goto :goto_0

    .line 736
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 710
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 711
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 717
    :goto_0
    return-object v0

    .line 714
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestOptions;->theme:Landroid/content/res/Resources$Theme;

    .line 715
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 717
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    goto :goto_0
.end method

.method public timeout(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .param p1, "timeoutMs"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 988
    sget-object v0, Lcom/bumptech/glide/load/model/stream/HttpGlideUrlLoader;->TIMEOUT:Lcom/bumptech/glide/load/Option;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
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
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .prologue
    .line 1186
    .local p1, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method final transform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1, "downsampleStrategy"    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
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
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .prologue
    .line 1137
    .local p2, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 1138
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 1142
    :goto_0
    return-object v0

    .line 1141
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    .line 1142
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    goto :goto_0
.end method

.method public transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
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
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .prologue
    .line 1315
    .local p1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/request/RequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public varargs transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
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
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .prologue
    .line 1207
    .local p1, "transformations":[Lcom/bumptech/glide/load/Transformation;, "[Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    new-instance v0, Lcom/bumptech/glide/load/MultiTransformation;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public useAnimationPool(Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .param p1, "flag"    # Z
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 489
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->useAnimationPool(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 496
    :goto_0
    return-object v0

    .line 493
    :cond_0
    iput-boolean p1, p0, Lcom/bumptech/glide/request/RequestOptions;->useAnimationPool:Z

    .line 494
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 496
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    goto :goto_0
.end method

.method public useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .param p1, "flag"    # Z
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 470
    :goto_0
    return-object v0

    .line 467
    :cond_0
    iput-boolean p1, p0, Lcom/bumptech/glide/request/RequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    .line 468
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 470
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    goto :goto_0
.end method
