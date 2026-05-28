.class public final Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;
.super Ljava/lang/Object;
.source "TransformationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$NoLock;
    }
.end annotation


# static fields
.field private static final BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

.field private static final CIRCLE_CROP_BITMAP_PAINT:Landroid/graphics/Paint;

.field private static final CIRCLE_CROP_PAINT_FLAGS:I = 0x7

.field private static final CIRCLE_CROP_SHAPE_PAINT:Landroid/graphics/Paint;

.field private static final DEFAULT_PAINT:Landroid/graphics/Paint;

.field private static final MODELS_REQUIRING_BITMAP_LOCK:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAINT_FLAGS:I = 0x6

.field private static final TAG:Ljava/lang/String; = "TransformationUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x7

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->DEFAULT_PAINT:Landroid/graphics/Paint;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->CIRCLE_CROP_SHAPE_PAINT:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1d

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "XT1085"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "XT1092"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "XT1093"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "XT1094"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "XT1095"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "XT1096"

    aput-object v3, v1, v2

    const-string v2, "XT1097"

    aput-object v2, v1, v5

    const-string v2, "XT1098"

    aput-object v2, v1, v4

    const/16 v2, 0x8

    const-string v3, "XT1031"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "XT1028"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "XT937C"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "XT1032"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "XT1008"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "XT1033"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "XT1035"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "XT1034"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "XT939G"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "XT1039"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "XT1040"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "XT1042"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "XT1045"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "XT1063"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "XT1064"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "XT1068"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "XT1069"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "XT1072"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "XT1077"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "XT1078"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "XT1079"

    aput-object v3, v1, v2

    .line 46
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->MODELS_REQUIRING_BITMAP_LOCK:Ljava/util/Set;

    .line 89
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->MODELS_REQUIRING_BITMAP_LOCK:Ljava/util/Set;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    :goto_0
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->CIRCLE_CROP_BITMAP_PAINT:Landroid/graphics/Paint;

    .line 94
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->CIRCLE_CROP_BITMAP_PAINT:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 95
    return-void

    .line 90
    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$NoLock;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$NoLock;-><init>()V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method

.method private static applyMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 3
    .param p0, "inBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "targetBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 505
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 507
    :try_start_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 508
    .local v0, "canvas":Landroid/graphics/Canvas;
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->DEFAULT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, p0, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 509
    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->clear(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 513
    return-void

    .line 511
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception v1

    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public static centerCrop(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "inBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v5, p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ne v5, p3, :cond_0

    .line 145
    .end local p1    # "inBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p1

    .line 126
    .restart local p1    # "inBitmap":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 127
    .local v2, "m":Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    mul-int/2addr v5, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v6, p2

    if-le v5, v6, :cond_1

    .line 128
    int-to-float v5, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 129
    .local v4, "scale":F
    int-to-float v5, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    mul-float v0, v5, v7

    .line 130
    .local v0, "dx":F
    const/4 v1, 0x0

    .line 137
    .local v1, "dy":F
    :goto_1
    invoke-virtual {v2, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 138
    add-float v5, v0, v7

    float-to-int v5, v5

    int-to-float v5, v5

    add-float v6, v1, v7

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 140
    invoke-static {p1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-interface {p0, p2, p3, v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 142
    .local v3, "result":Landroid/graphics/Bitmap;
    invoke-static {p1, v3}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->setAlpha(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 144
    invoke-static {p1, v3, v2}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->applyMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    move-object p1, v3

    .line 145
    goto :goto_0

    .line 132
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v3    # "result":Landroid/graphics/Bitmap;
    .end local v4    # "scale":F
    :cond_1
    int-to-float v5, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 133
    .restart local v4    # "scale":F
    const/4 v0, 0x0

    .line 134
    .restart local v0    # "dx":F
    int-to-float v5, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    mul-float v1, v5, v7

    .restart local v1    # "dy":F
    goto :goto_1
.end method

.method public static centerInside(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "inBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v1, 0x2

    .line 222
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gt v0, p3, :cond_1

    .line 223
    const-string v0, "TransformationUtils"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const-string v0, "TransformationUtils"

    const-string v1, "requested target size larger or equal to input, returning input"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local p1    # "inBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p1

    .line 228
    .restart local p1    # "inBitmap":Landroid/graphics/Bitmap;
    :cond_1
    const-string v0, "TransformationUtils"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    const-string v0, "TransformationUtils"

    const-string v1, "requested target size too big for input, fit centering instead"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->fitCenter(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method

.method public static circleCrop(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 20
    .param p0, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "inBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "destWidth"    # I
    .param p3, "destHeight"    # I

    .prologue
    .line 367
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 368
    .local v4, "destMinEdge":I
    int-to-float v0, v4

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v8, v18, v19

    .line 370
    .local v8, "radius":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .line 371
    .local v15, "srcWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 373
    .local v14, "srcHeight":I
    int-to-float v0, v4

    move/from16 v18, v0

    int-to-float v0, v15

    move/from16 v19, v0

    div-float v10, v18, v19

    .line 374
    .local v10, "scaleX":F
    int-to-float v0, v4

    move/from16 v18, v0

    int-to-float v0, v14

    move/from16 v19, v0

    div-float v11, v18, v19

    .line 375
    .local v11, "scaleY":F
    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 377
    .local v7, "maxScale":F
    int-to-float v0, v15

    move/from16 v18, v0

    mul-float v13, v7, v18

    .line 378
    .local v13, "scaledWidth":F
    int-to-float v0, v14

    move/from16 v18, v0

    mul-float v12, v7, v18

    .line 379
    .local v12, "scaledHeight":F
    int-to-float v0, v4

    move/from16 v18, v0

    sub-float v18, v18, v13

    const/high16 v19, 0x40000000    # 2.0f

    div-float v6, v18, v19

    .line 380
    .local v6, "left":F
    int-to-float v0, v4

    move/from16 v18, v0

    sub-float v18, v18, v12

    const/high16 v19, 0x40000000    # 2.0f

    div-float v17, v18, v19

    .line 382
    .local v17, "top":F
    new-instance v5, Landroid/graphics/RectF;

    add-float v18, v6, v13

    add-float v19, v17, v12

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v5, v6, v0, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 385
    .local v5, "destRect":Landroid/graphics/RectF;
    invoke-static/range {p0 .. p1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getAlphaSafeBitmap(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 387
    .local v16, "toTransform":Landroid/graphics/Bitmap;
    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v4, v4, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 388
    .local v9, "result":Landroid/graphics/Bitmap;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 390
    sget-object v18, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 392
    :try_start_0
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 394
    .local v3, "canvas":Landroid/graphics/Canvas;
    sget-object v18, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->CIRCLE_CROP_SHAPE_PAINT:Landroid/graphics/Paint;

    move-object/from16 v0, v18

    invoke-virtual {v3, v8, v8, v8, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 396
    const/16 v18, 0x0

    sget-object v19, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->CIRCLE_CROP_BITMAP_PAINT:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v3, v0, v1, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 397
    invoke-static {v3}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->clear(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    sget-object v18, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 402
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 403
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    .line 406
    :cond_0
    return-object v9

    .line 399
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception v18

    sget-object v19, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v18
.end method

.method private static clear(Landroid/graphics/Canvas;)V
    .locals 1
    .param p0, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 496
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 497
    return-void
.end method

.method public static fitCenter(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "inBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v10, 0x2

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-ne v8, p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-ne v8, p3, :cond_1

    .line 162
    const-string v8, "TransformationUtils"

    invoke-static {v8, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 163
    const-string v8, "TransformationUtils"

    const-string v9, "requested target size matches input, returning input"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .end local p1    # "inBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p1

    .line 167
    .restart local p1    # "inBitmap":Landroid/graphics/Bitmap;
    :cond_1
    int-to-float v8, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v7, v8, v9

    .line 168
    .local v7, "widthPercentage":F
    int-to-float v8, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v1, v8, v9

    .line 169
    .local v1, "heightPercentage":F
    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 173
    .local v3, "minPercentage":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 174
    .local v5, "targetWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 176
    .local v4, "targetHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-ne v8, v5, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-ne v8, v4, :cond_2

    .line 177
    const-string v8, "TransformationUtils"

    invoke-static {v8, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 178
    const-string v8, "TransformationUtils"

    const-string v9, "adjusted target size matches input, returning input"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v5, v8

    .line 187
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v4, v8

    .line 189
    invoke-static {p1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 190
    .local v0, "config":Landroid/graphics/Bitmap$Config;
    invoke-interface {p0, v5, v4, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 193
    .local v6, "toReuse":Landroid/graphics/Bitmap;
    invoke-static {p1, v6}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->setAlpha(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 195
    const-string v8, "TransformationUtils"

    invoke-static {v8, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 196
    const-string v8, "TransformationUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "request: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v8, "TransformationUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "toFit:   "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v8, "TransformationUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "toReuse: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v8, "TransformationUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "minPct:   "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_3
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 203
    .local v2, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 204
    invoke-static {p1, v6, v2}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->applyMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    move-object p1, v6

    .line 206
    goto/16 :goto_0
.end method

.method private static getAlphaSafeBitmap(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "maybeAlphaSafe"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 411
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    .end local p1    # "maybeAlphaSafe":Landroid/graphics/Bitmap;
    :goto_0
    return-object p1

    .line 415
    .restart local p1    # "maybeAlphaSafe":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {p0, v1, v2, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 417
    .local v0, "argbBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object p1, v0

    .line 421
    goto :goto_0
.end method

.method public static getBitmapDrawableLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method public static getExifOrientationDegrees(I)I
    .locals 1
    .param p0, "exifOrientation"    # I

    .prologue
    .line 282
    packed-switch p0, :pswitch_data_0

    .line 296
    const/4 v0, 0x0

    .line 299
    .local v0, "degreesToRotate":I
    :goto_0
    return v0

    .line 285
    .end local v0    # "degreesToRotate":I
    :pswitch_0
    const/16 v0, 0x5a

    .line 286
    .restart local v0    # "degreesToRotate":I
    goto :goto_0

    .line 289
    .end local v0    # "degreesToRotate":I
    :pswitch_1
    const/16 v0, 0xb4

    .line 290
    .restart local v0    # "degreesToRotate":I
    goto :goto_0

    .line 293
    .end local v0    # "degreesToRotate":I
    :pswitch_2
    const/16 v0, 0x10e

    .line 294
    .restart local v0    # "degreesToRotate":I
    goto :goto_0

    .line 282
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 500
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method static initializeMatrixForRotation(ILandroid/graphics/Matrix;)V
    .locals 5
    .param p0, "exifOrientation"    # I
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v0, -0x40800000    # -1.0f

    .line 517
    packed-switch p0, :pswitch_data_0

    .line 545
    :goto_0
    return-void

    .line 519
    :pswitch_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_0

    .line 522
    :pswitch_1
    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 525
    :pswitch_2
    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 526
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 529
    :pswitch_3
    invoke-virtual {p1, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 530
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 533
    :pswitch_4
    invoke-virtual {p1, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 536
    :pswitch_5
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 537
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 540
    :pswitch_6
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 517
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static isExifOrientationRequired(I)Z
    .locals 1
    .param p0, "exifOrientation"    # I

    .prologue
    .line 341
    packed-switch p0, :pswitch_data_0

    .line 351
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 349
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "imageToOrient"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "degreesToRotate"    # I

    .prologue
    .line 258
    move-object v8, p0

    .line 260
    .local v8, "result":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    .line 261
    :try_start_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 262
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 263
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 264
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    .line 263
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 271
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :cond_0
    :goto_0
    return-object v8

    .line 266
    :catch_0
    move-exception v7

    .line 267
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "TransformationUtils"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    const-string v0, "TransformationUtils"

    const-string v1, "Exception when trying to orient image"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static rotateImageExif(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "inBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "exifOrientation"    # I

    .prologue
    const/4 v8, 0x0

    .line 313
    invoke-static {p2}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->isExifOrientationRequired(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 333
    .end local p1    # "inBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p1

    .line 317
    .restart local p1    # "inBitmap":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 318
    .local v1, "matrix":Landroid/graphics/Matrix;
    invoke-static {p2, v1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->initializeMatrixForRotation(ILandroid/graphics/Matrix;)V

    .line 321
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v3, v8, v8, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 322
    .local v3, "newRect":Landroid/graphics/RectF;
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 324
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 325
    .local v4, "newWidth":I
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 327
    .local v2, "newHeight":I
    invoke-static {p1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 328
    .local v0, "config":Landroid/graphics/Bitmap$Config;
    invoke-interface {p0, v4, v2, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 330
    .local v5, "result":Landroid/graphics/Bitmap;
    iget v6, v3, Landroid/graphics/RectF;->left:F

    neg-float v6, v6

    iget v7, v3, Landroid/graphics/RectF;->top:F

    neg-float v7, v7

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 332
    invoke-static {p1, v5, v1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->applyMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    move-object p1, v5

    .line 333
    goto :goto_0
.end method

.method public static roundedCorners(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "inBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "roundingRadius"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 462
    if-lez p2, :cond_0

    move v6, v7

    :cond_0
    const-string v8, "roundingRadius must be greater than 0."

    invoke-static {v6, v8}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 465
    invoke-static {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getAlphaSafeBitmap(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 467
    .local v5, "toTransform":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {p0, v6, v8, v9}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 469
    .local v3, "result":Landroid/graphics/Bitmap;
    invoke-virtual {v3, v7}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 471
    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v5, v6, v8}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 473
    .local v4, "shader":Landroid/graphics/BitmapShader;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 474
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 475
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 476
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v2, v10, v10, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 477
    .local v2, "rect":Landroid/graphics/RectF;
    sget-object v6, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 479
    :try_start_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 480
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 481
    int-to-float v6, p2

    int-to-float v7, p2

    invoke-virtual {v0, v2, v6, v7, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 482
    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->clear(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    sget-object v6, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 487
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 488
    invoke-interface {p0, v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    .line 491
    :cond_1
    return-object v3

    .line 484
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception v6

    sget-object v7, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6
.end method

.method public static roundedCorners(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "inBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "roundingRadius"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 444
    invoke-static {p0, p1, p4}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->roundedCorners(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static setAlpha(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "inBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "outBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 245
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 246
    return-void
.end method
