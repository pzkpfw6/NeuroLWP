.class public Lcom/mikepenz/fastadapter/commons/utils/FastAdapterUIUtils;
.super Ljava/lang/Object;
.source "FastAdapterUIUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustAlpha(II)I
    .locals 2
    .param p0, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "alpha"    # I

    .prologue
    .line 75
    shl-int/lit8 v0, p1, 0x18

    const v1, 0xffffff

    and-int/2addr v1, p0

    or-int/2addr v0, v1

    return v0
.end method

.method public static getRippleDrawable(III)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "normalColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "pressedColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "radius"    # I

    .prologue
    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 103
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 104
    invoke-static {p0, p2}, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterUIUtils;->getRippleMask(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 106
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterUIUtils;->getStateListDrawable(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method private static getRippleMask(II)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "color"    # I
    .param p1, "radius"    # I

    .prologue
    const/4 v4, 0x0

    .line 118
    const/16 v3, 0x8

    new-array v0, v3, [F

    .line 119
    .local v0, "outerRadius":[F
    int-to-float v3, p1

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([FF)V

    .line 120
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v4, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 121
    .local v1, "r":Landroid/graphics/drawable/shapes/RoundRectShape;
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 122
    .local v2, "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    return-object v2
.end method

.method public static getSelectableBackground(Landroid/content/Context;)I
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 87
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 89
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/mikepenz/fastadapter/R$attr;->selectableItemBackground:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 90
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public static getSelectableBackground(Landroid/content/Context;IZ)Landroid/graphics/drawable/StateListDrawable;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "selected_color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "animate"    # Z

    .prologue
    const/4 v5, 0x0

    .line 34
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 36
    .local v2, "states":Landroid/graphics/drawable/StateListDrawable;
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 37
    .local v0, "clrActive":Landroid/graphics/drawable/ColorDrawable;
    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x10100a1

    aput v4, v3, v5

    invoke-virtual {v2, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 39
    new-array v3, v5, [I

    invoke-static {p0}, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterUIUtils;->getSelectableBackground(Landroid/content/Context;)I

    move-result v4

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 42
    if-eqz p2, :cond_0

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x10e0000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 44
    .local v1, "duration":I
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/StateListDrawable;->setEnterFadeDuration(I)V

    .line 45
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/StateListDrawable;->setExitFadeDuration(I)V

    .line 48
    .end local v1    # "duration":I
    :cond_0
    return-object v2
.end method

.method public static getSelectablePressedBackground(Landroid/content/Context;IIZ)Landroid/graphics/drawable/StateListDrawable;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "selected_color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "pressed_alpha"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 61
    invoke-static {p0, p1, p3}, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterUIUtils;->getSelectableBackground(Landroid/content/Context;IZ)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    .line 62
    .local v1, "states":Landroid/graphics/drawable/StateListDrawable;
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p1, p2}, Lcom/mikepenz/fastadapter/commons/utils/FastAdapterUIUtils;->adjustAlpha(II)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 63
    .local v0, "clrPressed":Landroid/graphics/drawable/ColorDrawable;
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, v2, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 64
    return-object v1
.end method

.method private static getStateListDrawable(II)Landroid/graphics/drawable/StateListDrawable;
    .locals 5
    .param p0, "normalColor"    # I
    .param p1, "pressedColor"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 135
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 136
    .local v0, "states":Landroid/graphics/drawable/StateListDrawable;
    new-array v1, v4, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 138
    new-array v1, v4, [I

    const v2, 0x101009c

    aput v2, v1, v3

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 140
    new-array v1, v4, [I

    const v2, 0x10102fe

    aput v2, v1, v3

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 142
    new-array v1, v3, [I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 144
    return-object v0
.end method
