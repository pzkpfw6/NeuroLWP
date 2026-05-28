.class public Lorg/kustom/api/dashboard/views/AspectRatioImageView;
.super Landroid/widget/ImageView;
.source "AspectRatioImageView.java"


# static fields
.field private static final DEFAULT_ASPECT_RATIO:F = 1.0f

.field private static final DEFAULT_ASPECT_RATIO_ENABLED:Z = false

.field private static final DEFAULT_DOMINANT_MEASUREMENT:I = 0x0

.field public static final MEASUREMENT_HEIGHT:I = 0x1

.field public static final MEASUREMENT_WIDTH:I


# instance fields
.field private aspectRatio:F

.field private aspectRatioEnabled:Z

.field private dominantMeasurement:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/kustom/api/dashboard/views/AspectRatioImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    sget-object v1, Lorg/kustom/api/dashboard/R$styleable;->AspectRatioImageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 30
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lorg/kustom/api/dashboard/R$styleable;->AspectRatioImageView_aspectRatio:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lorg/kustom/api/dashboard/views/AspectRatioImageView;->aspectRatio:F

    .line 34
    sget v1, Lorg/kustom/api/dashboard/R$styleable;->AspectRatioImageView_aspectRatioEnabled:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lorg/kustom/api/dashboard/views/AspectRatioImageView;->aspectRatioEnabled:Z

    .line 38
    sget v1, Lorg/kustom/api/dashboard/R$styleable;->AspectRatioImageView_dominantMeasurement:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lorg/kustom/api/dashboard/views/AspectRatioImageView;->dominantMeasurement:I

    .line 42
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    return-void
.end method


# virtual methods
.method public getAspectRatio()F
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lorg/kustom/api/dashboard/views/AspectRatioImageView;->aspectRatio:F

    return v0
.end method

.method public getAspectRatioEnabled()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/kustom/api/dashboard/views/AspectRatioImageView;->aspectRatioEnabled:Z

    return v0
.end method

.method public getDominantMeasurement()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lorg/kustom/api/dashboard/views/AspectRatioImageView;->dominantMeasurement:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 48
    iget-boolean v2, p0, Lorg/kustom/api/dashboard/views/AspectRatioImageView;->aspectRatioEnabled:Z

    if-nez v2, :cond_0

    .line 68
    :goto_0
    return-void

    .line 52
    :cond_0
    iget v2, p0, Lorg/kustom/api/dashboard/views/AspectRatioImageView;->dominantMeasurement:I

    packed-switch v2, :pswitch_data_0

    .line 64
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measurement with ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/kustom/api/dashboard/views/AspectRatioImageView;->dominantMeasurement:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :pswitch_0
    invoke-virtual {p0}, Lorg/kustom/api/dashboard/views/AspectRatioImageView;->getMeasuredWidth()I

    move-result v1

    .line 55
    .local v1, "newWidth":I
    int-to-float v2, v1

    iget v3, p0, Lorg/kustom/api/dashboard/views/AspectRatioImageView;->aspectRatio:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 67
    .local v0, "newHeight":I
    :goto_1
    invoke-virtual {p0, v1, v0}, Lorg/kustom/api/dashboard/views/AspectRatioImageView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 59
    .end local v0    # "newHeight":I
    .end local v1    # "newWidth":I
    :pswitch_1
    invoke-virtual {p0}, Lorg/kustom/api/dashboard/views/AspectRatioImageView;->getMeasuredHeight()I

    move-result v0

    .line 60
    .restart local v0    # "newHeight":I
    int-to-float v2, v0

    iget v3, p0, Lorg/kustom/api/dashboard/views/AspectRatioImageView;->aspectRatio:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 61
    .restart local v1    # "newWidth":I
    goto :goto_1

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAspectRatio(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .prologue
    .line 75
    iput p1, p0, Lorg/kustom/api/dashboard/views/AspectRatioImageView;->aspectRatio:F

    .line 76
    iget-boolean v0, p0, Lorg/kustom/api/dashboard/views/AspectRatioImageView;->aspectRatioEnabled:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lorg/kustom/api/dashboard/views/AspectRatioImageView;->requestLayout()V

    .line 79
    :cond_0
    return-void
.end method

.method public setAspectRatioEnabled(Z)V
    .locals 0
    .param p1, "aspectRatioEnabled"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lorg/kustom/api/dashboard/views/AspectRatioImageView;->aspectRatioEnabled:Z

    .line 87
    invoke-virtual {p0}, Lorg/kustom/api/dashboard/views/AspectRatioImageView;->requestLayout()V

    .line 88
    return-void
.end method

.method public setDominantMeasurement(I)V
    .locals 2
    .param p1, "dominantMeasurement"    # I

    .prologue
    .line 95
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid measurement type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    iput p1, p0, Lorg/kustom/api/dashboard/views/AspectRatioImageView;->dominantMeasurement:I

    .line 99
    invoke-virtual {p0}, Lorg/kustom/api/dashboard/views/AspectRatioImageView;->requestLayout()V

    .line 100
    return-void
.end method
