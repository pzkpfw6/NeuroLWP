.class public final Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
.super Ljava/lang/Object;
.source "Downsampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;
    }
.end annotation


# static fields
.field public static final ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final DECODE_FORMAT:Lcom/bumptech/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option",
            "<",
            "Lcom/bumptech/glide/load/DecodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOWNSAMPLE_STRATEGY:Lcom/bumptech/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option",
            "<",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_CALLBACKS:Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;

.field public static final FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS:Lcom/bumptech/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final ICO_MIME_TYPE:Ljava/lang/String; = "image/x-ico"

.field private static final MARK_POSITION:I = 0xa00000

.field private static final NO_DOWNSAMPLE_PRE_N_MIME_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OPTIONS_QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/graphics/BitmapFactory$Options;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "Downsampler"

.field private static final TYPES_THAT_USE_POOL_PRE_KITKAT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;",
            ">;"
        }
    .end annotation
.end field

.field private static final WBMP_MIME_TYPE:Ljava/lang/String; = "image/vnd.wap.wbmp"


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final displayMetrics:Landroid/util/DisplayMetrics;

.field private final hardwareConfigState:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

.field private final parsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 47
    const-string v0, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat"

    sget-object v1, Lcom/bumptech/glide/load/DecodeFormat;->DEFAULT:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/Option;->memory(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/Option;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->DECODE_FORMAT:Lcom/bumptech/glide/load/Option;

    .line 54
    const-string v0, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy"

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->DEFAULT:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    .line 55
    invoke-static {v0, v1}, Lcom/bumptech/glide/load/Option;->memory(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/Option;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->DOWNSAMPLE_STRATEGY:Lcom/bumptech/glide/load/Option;

    .line 69
    const-string v0, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize"

    .line 70
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/Option;->memory(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/Option;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS:Lcom/bumptech/glide/load/Option;

    .line 89
    const-string v0, "com.bumtpech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode"

    const/4 v1, 0x0

    .line 90
    invoke-static {v0, v1}, Lcom/bumptech/glide/load/Option;->memory(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/Option;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/Option;

    .line 95
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "image/vnd.wap.wbmp"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "image/x-ico"

    aput-object v3, v1, v2

    .line 98
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 96
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->NO_DOWNSAMPLE_PRE_N_MIME_TYPES:Ljava/util/Set;

    .line 104
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->EMPTY_CALLBACKS:Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;

    .line 115
    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 117
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 116
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->TYPES_THAT_USE_POOL_PRE_KITKAT:Ljava/util/Set;

    .line 123
    invoke-static {v4}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .locals 1
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .param p3, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p4, "byteArrayPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Landroid/util/DisplayMetrics;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "parsers":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/ImageHeaderParser;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->getInstance()Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->hardwareConfigState:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    .line 136
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->parsers:Ljava/util/List;

    .line 137
    invoke-static {p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/DisplayMetrics;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 138
    invoke-static {p3}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 139
    invoke-static {p4}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 140
    return-void
.end method

.method private static adjustTargetDensityForError(D)I
    .locals 8
    .param p0, "adjustedScaleFactor"    # D

    .prologue
    .line 474
    invoke-static {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getDensityMultiplier(D)I

    move-result v0

    .line 475
    .local v0, "densityMultiplier":I
    int-to-double v6, v0

    mul-double/2addr v6, p0

    invoke-static {v6, v7}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->round(D)I

    move-result v4

    .line 476
    .local v4, "targetDensity":I
    int-to-float v5, v4

    int-to-float v6, v0

    div-float v1, v5, v6

    .line 477
    .local v1, "scaleFactorWithError":F
    float-to-double v6, v1

    div-double v2, p0, v6

    .line 478
    .local v2, "difference":D
    int-to-double v6, v4

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->round(D)I

    move-result v5

    return v5
.end method

.method private calculateConfig(Ljava/io/InputStream;Lcom/bumptech/glide/load/DecodeFormat;ZZLandroid/graphics/BitmapFactory$Options;II)V
    .locals 9
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "format"    # Lcom/bumptech/glide/load/DecodeFormat;
    .param p3, "isHardwareConfigAllowed"    # Z
    .param p4, "isExifOrientationRequired"    # Z
    .param p5, "optionsWithScaling"    # Landroid/graphics/BitmapFactory$Options;
    .param p6, "targetWidth"    # I
    .param p7, "targetHeight"    # I

    .prologue
    .line 515
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->hardwareConfigState:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    move v1, p6

    move/from16 v2, p7

    move-object v3, p5

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->setHardwareConfigIfAllowed(IILandroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/DecodeFormat;ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888_DISALLOW_HARDWARE:Lcom/bumptech/glide/load/DecodeFormat;

    if-eq p2, v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 529
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 533
    :cond_3
    const/4 v8, 0x0

    .line 535
    .local v8, "hasAlpha":Z
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->parsers:Ljava/util/List;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-static {v0, p1, v1}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getType(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->hasAlpha()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 544
    :cond_4
    :goto_1
    if-eqz v8, :cond_5

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_2
    iput-object v0, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 545
    iget-object v0, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    .line 546
    const/4 v0, 0x1

    iput-boolean v0, p5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    goto :goto_0

    .line 536
    :catch_0
    move-exception v7

    .line 537
    .local v7, "e":Ljava/io/IOException;
    const-string v0, "Downsampler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 538
    const-string v0, "Downsampler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot determine whether the image has alpha or not from header, format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 544
    .end local v7    # "e":Ljava/io/IOException;
    :cond_5
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_2
.end method

.method private static calculateScaling(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;IIIIILandroid/graphics/BitmapFactory$Options;)V
    .locals 24
    .param p0, "imageType"    # Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "decodeCallbacks"    # Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;
    .param p3, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p4, "downsampleStrategy"    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
    .param p5, "degreesToRotate"    # I
    .param p6, "sourceWidth"    # I
    .param p7, "sourceHeight"    # I
    .param p8, "targetWidth"    # I
    .param p9, "targetHeight"    # I
    .param p10, "options"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    if-lez p6, :cond_0

    if-gtz p7, :cond_2

    .line 338
    :cond_0
    const-string v21, "Downsampler"

    const/16 v22, 0x3

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 339
    const-string v21, "Downsampler"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unable to determine dimensions for: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " with target ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "x"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_1
    :goto_0
    return-void

    .line 346
    :cond_2
    const/16 v21, 0x5a

    move/from16 v0, p5

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    const/16 v21, 0x10e

    move/from16 v0, p5

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 351
    :cond_3
    move-object/from16 v0, p4

    move/from16 v1, p7

    move/from16 v2, p6

    move/from16 v3, p8

    move/from16 v4, p9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->getScaleFactor(IIII)F

    move-result v9

    .line 358
    .local v9, "exactScaleFactor":F
    :goto_1
    const/16 v21, 0x0

    cmpg-float v21, v9, v21

    if-gtz v21, :cond_5

    .line 359
    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Cannot scale with factor: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " from: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", source: ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "x"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "], target: ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "x"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 355
    .end local v9    # "exactScaleFactor":F
    :cond_4
    move-object/from16 v0, p4

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    move/from16 v4, p9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->getScaleFactor(IIII)F

    move-result v9

    .restart local v9    # "exactScaleFactor":F
    goto :goto_1

    .line 364
    :cond_5
    move-object/from16 v0, p4

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    move/from16 v4, p9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->getSampleSizeRounding(IIII)Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    move-result-object v17

    .line 366
    .local v17, "rounding":Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
    if-nez v17, :cond_6

    .line 367
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "Cannot round with null rounding"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 370
    :cond_6
    move/from16 v0, p6

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v9

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->round(D)I

    move-result v13

    .line 371
    .local v13, "outWidth":I
    move/from16 v0, p7

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v9

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->round(D)I

    move-result v12

    .line 373
    .local v12, "outHeight":I
    div-int v20, p6, v13

    .line 374
    .local v20, "widthScaleFactor":I
    div-int v10, p7, v12

    .line 376
    .local v10, "heightScaleFactor":I
    sget-object v21, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->MEMORY:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 377
    move/from16 v0, v20

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 382
    .local v18, "scaleFactor":I
    :goto_2
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x17

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_b

    sget-object v21, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->NO_DOWNSAMPLE_PRE_N_MIME_TYPES:Ljava/util/Set;

    move-object/from16 v0, p10

    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 383
    invoke-interface/range {v21 .. v22}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 384
    const/4 v15, 0x1

    .line 398
    .local v15, "powerOfTwoSampleSize":I
    :cond_7
    :goto_3
    move-object/from16 v0, p10

    iput v15, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 401
    sget-object v21, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 405
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 406
    .local v11, "nativeScaling":I
    move/from16 v0, p6

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v11

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v16, v0

    .line 407
    .local v16, "powerOfTwoWidth":I
    move/from16 v0, p7

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v11

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v14, v0

    .line 408
    .local v14, "powerOfTwoHeight":I
    div-int/lit8 v19, v15, 0x8

    .line 409
    .local v19, "secondaryScaling":I
    if-lez v19, :cond_8

    .line 410
    div-int v16, v16, v19

    .line 411
    div-int v14, v14, v19

    .line 440
    .end local v11    # "nativeScaling":I
    .end local v19    # "secondaryScaling":I
    :cond_8
    :goto_4
    move-object/from16 v0, p4

    move/from16 v1, v16

    move/from16 v2, p8

    move/from16 v3, p9

    invoke-virtual {v0, v1, v14, v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->getScaleFactor(IIII)F

    move-result v21

    move/from16 v0, v21

    float-to-double v6, v0

    .line 445
    .local v6, "adjustedScaleFactor":D
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x13

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_9

    .line 446
    invoke-static {v6, v7}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->adjustTargetDensityForError(D)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p10

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 447
    invoke-static {v6, v7}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getDensityMultiplier(D)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p10

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 449
    :cond_9
    invoke-static/range {p10 .. p10}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->isScaling(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v21

    if-eqz v21, :cond_14

    .line 450
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p10

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 455
    :goto_5
    const-string v21, "Downsampler"

    const/16 v22, 0x2

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 456
    const-string v21, "Downsampler"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Calculate scaling, source: ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "x"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "], target: ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "x"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "], power of two scaled: ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "x"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "], exact scale factor: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", power of 2 sample size: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", adjusted scale factor: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", target density: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p10

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", density: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p10

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 378
    .end local v6    # "adjustedScaleFactor":D
    .end local v14    # "powerOfTwoHeight":I
    .end local v15    # "powerOfTwoSampleSize":I
    .end local v16    # "powerOfTwoWidth":I
    .end local v18    # "scaleFactor":I
    :cond_a
    move/from16 v0, v20

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v18

    goto/16 :goto_2

    .line 386
    .restart local v18    # "scaleFactor":I
    :cond_b
    const/16 v21, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 387
    .restart local v15    # "powerOfTwoSampleSize":I
    sget-object v21, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->MEMORY:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_7

    int-to-float v0, v15

    move/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    div-float v22, v22, v9

    cmpg-float v21, v21, v22

    if-gez v21, :cond_7

    .line 389
    shl-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 413
    :cond_c
    sget-object v21, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_d

    sget-object v21, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 414
    :cond_d
    move/from16 v0, p6

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v15

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->floor(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v16, v0

    .line 415
    .restart local v16    # "powerOfTwoWidth":I
    move/from16 v0, p7

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v15

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->floor(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v14, v0

    .restart local v14    # "powerOfTwoHeight":I
    goto/16 :goto_4

    .line 416
    .end local v14    # "powerOfTwoHeight":I
    .end local v16    # "powerOfTwoWidth":I
    :cond_e
    sget-object v21, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_f

    sget-object v21, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 417
    :cond_f
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x18

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_10

    .line 418
    move/from16 v0, p6

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v15

    move/from16 v22, v0

    div-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 419
    .restart local v16    # "powerOfTwoWidth":I
    move/from16 v0, p7

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v15

    move/from16 v22, v0

    div-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v14

    .restart local v14    # "powerOfTwoHeight":I
    goto/16 :goto_4

    .line 421
    .end local v14    # "powerOfTwoHeight":I
    .end local v16    # "powerOfTwoWidth":I
    :cond_10
    move/from16 v0, p6

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v15

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->floor(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v16, v0

    .line 422
    .restart local v16    # "powerOfTwoWidth":I
    move/from16 v0, p7

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v15

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->floor(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v14, v0

    .restart local v14    # "powerOfTwoHeight":I
    goto/16 :goto_4

    .line 424
    .end local v14    # "powerOfTwoHeight":I
    .end local v16    # "powerOfTwoWidth":I
    :cond_11
    rem-int v21, p6, v15

    if-nez v21, :cond_12

    rem-int v21, p7, v15

    if-eqz v21, :cond_13

    .line 428
    :cond_12
    move-object/from16 v0, p1

    move-object/from16 v1, p10

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getDimensions(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)[I

    move-result-object v8

    .line 433
    .local v8, "dimensions":[I
    const/16 v21, 0x0

    aget v16, v8, v21

    .line 434
    .restart local v16    # "powerOfTwoWidth":I
    const/16 v21, 0x1

    aget v14, v8, v21

    .line 435
    .restart local v14    # "powerOfTwoHeight":I
    goto/16 :goto_4

    .line 436
    .end local v8    # "dimensions":[I
    .end local v14    # "powerOfTwoHeight":I
    .end local v16    # "powerOfTwoWidth":I
    :cond_13
    div-int v16, p6, v15

    .line 437
    .restart local v16    # "powerOfTwoWidth":I
    div-int v14, p7, v15

    .restart local v14    # "powerOfTwoHeight":I
    goto/16 :goto_4

    .line 452
    .restart local v6    # "adjustedScaleFactor":D
    :cond_14
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p10

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    move/from16 v0, v21

    move-object/from16 v1, p10

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto/16 :goto_5
.end method

.method private decodeFromWrappedStreams(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/DecodeFormat;ZIIZLcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Landroid/graphics/Bitmap;
    .locals 39
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p3, "downsampleStrategy"    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
    .param p4, "decodeFormat"    # Lcom/bumptech/glide/load/DecodeFormat;
    .param p5, "isHardwareConfigAllowed"    # Z
    .param p6, "requestedWidth"    # I
    .param p7, "requestedHeight"    # I
    .param p8, "fixBitmapToRequestedDimensions"    # Z
    .param p9, "callbacks"    # Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v26

    .line 225
    .local v26, "startTime":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p9

    invoke-static {v0, v1, v2, v5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getDimensions(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)[I

    move-result-object v37

    .line 226
    .local v37, "sourceDimensions":[I
    const/4 v5, 0x0

    aget v10, v37, v5

    .line 227
    .local v10, "sourceWidth":I
    const/4 v5, 0x1

    aget v11, v37, v5

    .line 228
    .local v11, "sourceHeight":I
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    move-object/from16 v38, v0

    .line 234
    .local v38, "sourceMimeType":Ljava/lang/String;
    const/4 v5, -0x1

    if-eq v10, v5, :cond_0

    const/4 v5, -0x1

    if-ne v11, v5, :cond_1

    .line 235
    :cond_0
    const/16 p5, 0x0

    .line 238
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->parsers:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    move-object/from16 v0, p1

    invoke-static {v5, v0, v6}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getOrientation(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I

    move-result v34

    .line 239
    .local v34, "orientation":I
    invoke-static/range {v34 .. v34}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getExifOrientationDegrees(I)I

    move-result v9

    .line 240
    .local v9, "degreesToRotate":I
    invoke-static/range {v34 .. v34}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->isExifOrientationRequired(I)Z

    move-result v18

    .line 242
    .local v18, "isExifOrientationRequired":Z
    const/high16 v5, -0x80000000

    move/from16 v0, p6

    if-ne v0, v5, :cond_7

    move v12, v10

    .line 243
    .local v12, "targetWidth":I
    :goto_0
    const/high16 v5, -0x80000000

    move/from16 v0, p7

    if-ne v0, v5, :cond_8

    move v13, v11

    .line 245
    .local v13, "targetHeight":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->parsers:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    move-object/from16 v0, p1

    invoke-static {v5, v0, v6}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getType(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v4

    .line 247
    .local v4, "imageType":Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object/from16 v5, p1

    move-object/from16 v6, p9

    move-object/from16 v8, p3

    move-object/from16 v14, p2

    invoke-static/range {v4 .. v14}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->calculateScaling(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;IIIIILandroid/graphics/BitmapFactory$Options;)V

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, p4

    move/from16 v17, p5

    move-object/from16 v19, p2

    move/from16 v20, v12

    move/from16 v21, v13

    .line 259
    invoke-direct/range {v14 .. v21}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->calculateConfig(Ljava/io/InputStream;Lcom/bumptech/glide/load/DecodeFormat;ZZLandroid/graphics/BitmapFactory$Options;II)V

    .line 268
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_9

    const/16 v33, 0x1

    .line 270
    .local v33, "isKitKatOrGreater":Z
    :goto_2
    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    if-eqz v33, :cond_4

    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->shouldUsePool(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 273
    if-ltz v10, :cond_a

    if-ltz v11, :cond_a

    if-eqz p8, :cond_a

    if-eqz v33, :cond_a

    .line 275
    move/from16 v32, v12

    .line 276
    .local v32, "expectedWidth":I
    move/from16 v31, v13

    .line 297
    .local v31, "expectedHeight":I
    :cond_3
    :goto_3
    if-lez v32, :cond_4

    if-lez v31, :cond_4

    .line 298
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object/from16 v0, p2

    move/from16 v1, v32

    move/from16 v2, v31

    invoke-static {v0, v5, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->setInBitmap(Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V

    .line 301
    .end local v31    # "expectedHeight":I
    .end local v32    # "expectedWidth":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p9

    invoke-static {v0, v1, v2, v5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 302
    .local v23, "downsampled":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object/from16 v0, p9

    move-object/from16 v1, v23

    invoke-interface {v0, v5, v1}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;->onDecodeComplete(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)V

    .line 304
    const-string v5, "Downsampler"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    move/from16 v19, v10

    move/from16 v20, v11

    move-object/from16 v21, v38

    move-object/from16 v22, p2

    move/from16 v24, p6

    move/from16 v25, p7

    .line 305
    invoke-static/range {v19 .. v27}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->logDecode(IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;IIJ)V

    .line 309
    :cond_5
    const/16 v35, 0x0

    .line 310
    .local v35, "rotated":Landroid/graphics/Bitmap;
    if-eqz v23, :cond_6

    .line 313
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 315
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-static {v5, v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->rotateImageExif(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v35

    .line 316
    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 317
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    .line 321
    :cond_6
    return-object v35

    .end local v4    # "imageType":Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .end local v12    # "targetWidth":I
    .end local v13    # "targetHeight":I
    .end local v23    # "downsampled":Landroid/graphics/Bitmap;
    .end local v33    # "isKitKatOrGreater":Z
    .end local v35    # "rotated":Landroid/graphics/Bitmap;
    :cond_7
    move/from16 v12, p6

    .line 242
    goto/16 :goto_0

    .restart local v12    # "targetWidth":I
    :cond_8
    move/from16 v13, p7

    .line 243
    goto/16 :goto_1

    .line 268
    .restart local v4    # "imageType":Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .restart local v13    # "targetHeight":I
    :cond_9
    const/16 v33, 0x0

    goto/16 :goto_2

    .line 278
    .restart local v33    # "isKitKatOrGreater":Z
    :cond_a
    invoke-static/range {p2 .. p2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->isScaling(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 279
    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    int-to-float v5, v5

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-float v6, v6

    div-float v28, v5, v6

    .line 280
    .local v28, "densityMultiplier":F
    :goto_4
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move/from16 v36, v0

    .line 281
    .local v36, "sampleSize":I
    int-to-float v5, v10

    move/from16 v0, v36

    int-to-float v6, v0

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v30, v0

    .line 282
    .local v30, "downsampledWidth":I
    int-to-float v5, v11

    move/from16 v0, v36

    int-to-float v6, v0

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v29, v0

    .line 283
    .local v29, "downsampledHeight":I
    move/from16 v0, v30

    int-to-float v5, v0

    mul-float v5, v5, v28

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v32

    .line 284
    .restart local v32    # "expectedWidth":I
    move/from16 v0, v29

    int-to-float v5, v0

    mul-float v5, v5, v28

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v31

    .line 286
    .restart local v31    # "expectedHeight":I
    const-string v5, "Downsampler"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 287
    const-string v5, "Downsampler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Calculated target ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] for source ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], sampleSize: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", targetDensity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", density: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", density multiplier: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 279
    .end local v28    # "densityMultiplier":F
    .end local v29    # "downsampledHeight":I
    .end local v30    # "downsampledWidth":I
    .end local v31    # "expectedHeight":I
    .end local v32    # "expectedWidth":I
    .end local v36    # "sampleSize":I
    :cond_b
    const/high16 v28, 0x3f800000    # 1.0f

    goto/16 :goto_4
.end method

.method private static decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "callbacks"    # Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;
    .param p3, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 568
    iget-boolean v7, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v7, :cond_1

    .line 569
    const/high16 v7, 0xa00000

    invoke-virtual {p0, v7}, Ljava/io/InputStream;->mark(I)V

    .line 580
    :goto_0
    iget v6, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 581
    .local v6, "sourceWidth":I
    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 582
    .local v5, "sourceHeight":I
    iget-object v2, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 584
    .local v2, "outMimeType":Ljava/lang/String;
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getBitmapDrawableLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 586
    const/4 v7, 0x0

    :try_start_0
    invoke-static {p0, v7, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 606
    .local v4, "result":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getBitmapDrawableLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 609
    iget-boolean v7, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v7, :cond_0

    .line 610
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 613
    .end local v4    # "result":Landroid/graphics/Bitmap;
    :cond_0
    :goto_1
    return-object v4

    .line 576
    .end local v2    # "outMimeType":Ljava/lang/String;
    .end local v5    # "sourceHeight":I
    .end local v6    # "sourceWidth":I
    :cond_1
    invoke-interface {p2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;->onObtainBounds()V

    goto :goto_0

    .line 587
    .restart local v2    # "outMimeType":Ljava/lang/String;
    .restart local v5    # "sourceHeight":I
    .restart local v6    # "sourceWidth":I
    :catch_0
    move-exception v1

    .line 589
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-static {v1, v6, v5, v2, p1}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->newIoExceptionForInBitmapAssertion(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;

    move-result-object v0

    .line 590
    .local v0, "bitmapAssertionException":Ljava/io/IOException;
    const-string v7, "Downsampler"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 591
    const-string v7, "Downsampler"

    const-string v8, "Failed to decode with inBitmap, trying again without Bitmap re-use"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 594
    :cond_2
    iget-object v7, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_3

    .line 596
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 597
    iget-object v7, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-interface {p3, v7}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    .line 598
    const/4 v7, 0x0

    iput-object v7, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 599
    invoke-static {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 606
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getBitmapDrawableLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 600
    :catch_1
    move-exception v3

    .line 601
    .local v3, "resetException":Ljava/io/IOException;
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 606
    .end local v0    # "bitmapAssertionException":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "resetException":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getBitmapDrawableLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v7

    .line 604
    .restart local v0    # "bitmapAssertionException":Ljava/io/IOException;
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private static getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 642
    if-nez p0, :cond_0

    .line 643
    const/4 v1, 0x0

    .line 648
    :goto_0
    return-object v1

    .line 646
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 648
    .local v0, "sizeString":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 647
    .end local v0    # "sizeString":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method private static declared-synchronized getDefaultOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 4

    .prologue
    .line 694
    const-class v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 695
    :try_start_1
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapFactory$Options;

    .line 696
    .local v0, "decodeBitmapOptions":Landroid/graphics/BitmapFactory$Options;
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 697
    if-nez v0, :cond_0

    .line 698
    :try_start_2
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .end local v0    # "decodeBitmapOptions":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 699
    .restart local v0    # "decodeBitmapOptions":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->resetOptions(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 702
    :cond_0
    monitor-exit v2

    return-object v0

    .line 696
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 694
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static getDensityMultiplier(D)I
    .locals 6
    .param p0, "adjustedScaleFactor"    # D

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 482
    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    .line 484
    cmpg-double v2, p0, v4

    if-gtz v2, :cond_0

    .end local p0    # "adjustedScaleFactor":D
    :goto_0
    mul-double/2addr v0, p0

    .line 482
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 484
    .restart local p0    # "adjustedScaleFactor":D
    :cond_0
    div-double p0, v4, p0

    goto :goto_0
.end method

.method private static getDimensions(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)[I
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "decodeCallbacks"    # Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;
    .param p3, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 560
    iput-boolean v3, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 561
    invoke-static {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;

    .line 562
    iput-boolean v2, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 563
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v1, v0, v2

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v1, v0, v3

    return-object v0
.end method

.method private static getInBitmapString(Landroid/graphics/BitmapFactory$Options;)Ljava/lang/String;
    .locals 1
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 636
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isScaling(Landroid/graphics/BitmapFactory$Options;)Z
    .locals 2
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 617
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static logDecode(IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;IIJ)V
    .locals 5
    .param p0, "sourceWidth"    # I
    .param p1, "sourceHeight"    # I
    .param p2, "outMimeType"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p4, "result"    # Landroid/graphics/Bitmap;
    .param p5, "requestedWidth"    # I
    .param p6, "requestedHeight"    # I
    .param p7, "startTime"    # J

    .prologue
    .line 624
    const-string v0, "Downsampler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with inBitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 626
    invoke-static {p3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getInBitmapString(Landroid/graphics/BitmapFactory$Options;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], sample size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", density: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", target density: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 631
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 632
    invoke-static {p7, p8}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 624
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    return-void
.end method

.method private static newIoExceptionForInBitmapAssertion(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;
    .locals 3
    .param p0, "e"    # Ljava/lang/IllegalArgumentException;
    .param p1, "outWidth"    # I
    .param p2, "outHeight"    # I
    .param p3, "outMimeType"    # Ljava/lang/String;
    .param p4, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 658
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception decoding bitmap, outWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", outHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", outMimeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", inBitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 662
    invoke-static {p4}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getInBitmapString(Landroid/graphics/BitmapFactory$Options;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 658
    return-object v0
.end method

.method private static releaseOptions(Landroid/graphics/BitmapFactory$Options;)V
    .locals 2
    .param p0, "decodeBitmapOptions"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 706
    invoke-static {p0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->resetOptions(Landroid/graphics/BitmapFactory$Options;)V

    .line 707
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    monitor-enter v1

    .line 708
    :try_start_0
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 709
    monitor-exit v1

    .line 710
    return-void

    .line 709
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static resetOptions(Landroid/graphics/BitmapFactory$Options;)V
    .locals 3
    .param p0, "decodeBitmapOptions"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 714
    iput-object v1, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 715
    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 716
    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 717
    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 718
    iput-object v1, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 719
    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 720
    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 721
    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 722
    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 723
    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 724
    iput-object v1, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 725
    iput-object v1, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 726
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 727
    return-void
.end method

.method private static round(D)I
    .locals 2
    .param p0, "value"    # D

    .prologue
    .line 490
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, p0

    double-to-int v0, v0

    return v0
.end method

.method private static setInBitmap(Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V
    .locals 3
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 669
    const/4 v0, 0x0

    .line 671
    .local v0, "expectedConfig":Landroid/graphics/Bitmap$Config;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 672
    iget-object v1, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_0

    .line 690
    :goto_0
    return-void

    .line 677
    :cond_0
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    .line 680
    :cond_1
    if-nez v0, :cond_2

    .line 686
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 689
    :cond_2
    invoke-interface {p1, p2, p3, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private shouldUsePool(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;)Z
    .locals 2
    .param p1, "imageType"    # Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .prologue
    .line 496
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 497
    const/4 v0, 0x1

    .line 502
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->TYPES_THAT_USE_POOL_PRE_KITKAT:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .param p4, "options"    # Lcom/bumptech/glide/load/Options;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    sget-object v5, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->EMPTY_CALLBACKS:Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decode(Ljava/io/InputStream;IILcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    return-object v0
.end method

.method public decode(Ljava/io/InputStream;IILcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 13
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "requestedWidth"    # I
    .param p3, "requestedHeight"    # I
    .param p4, "options"    # Lcom/bumptech/glide/load/Options;
    .param p5, "callbacks"    # Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            "Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    const-string v2, "You must provide an InputStream that supports mark()"

    invoke-static {v1, v2}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    const/high16 v2, 0x10000

    const-class v7, [B

    invoke-interface {v1, v2, v7}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->get(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    .line 195
    .local v11, "bytesForOptions":[B
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    .line 196
    .local v3, "bitmapFactoryOptions":Landroid/graphics/BitmapFactory$Options;
    iput-object v11, v3, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 198
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->DECODE_FORMAT:Lcom/bumptech/glide/load/Option;

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/load/DecodeFormat;

    .line 199
    .local v5, "decodeFormat":Lcom/bumptech/glide/load/DecodeFormat;
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->DOWNSAMPLE_STRATEGY:Lcom/bumptech/glide/load/Option;

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    .line 200
    .local v4, "downsampleStrategy":Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS:Lcom/bumptech/glide/load/Option;

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 201
    .local v9, "fixBitmapToRequestedDimensions":Z
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/Option;

    .line 202
    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/Option;

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v6, 0x1

    .line 203
    .local v6, "isHardwareConfigAllowed":Z
    :goto_0
    sget-object v1, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888_DISALLOW_HARDWARE:Lcom/bumptech/glide/load/DecodeFormat;

    if-ne v5, v1, :cond_0

    .line 204
    const/4 v6, 0x0

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move v7, p2

    move/from16 v8, p3

    move-object/from16 v10, p5

    .line 208
    :try_start_0
    invoke-direct/range {v1 .. v10}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeFromWrappedStreams(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/DecodeFormat;ZIIZLcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 211
    .local v12, "result":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {v12, v1}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 213
    invoke-static {v3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->releaseOptions(Landroid/graphics/BitmapFactory$Options;)V

    .line 214
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-interface {v2, v11}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;)V

    .line 211
    return-object v1

    .line 202
    .end local v6    # "isHardwareConfigAllowed":Z
    .end local v12    # "result":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 213
    .restart local v6    # "isHardwareConfigAllowed":Z
    :catchall_0
    move-exception v1

    invoke-static {v3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->releaseOptions(Landroid/graphics/BitmapFactory$Options;)V

    .line 214
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-interface {v2, v11}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;)V

    throw v1
.end method

.method public handles(Ljava/io/InputStream;)Z
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public handles(Ljava/nio/ByteBuffer;)Z
    .locals 1
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method
