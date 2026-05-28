.class public Lorg/kustom/api/dashboard/utils/ThemeHelper;
.super Ljava/lang/Object;
.source "ThemeHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static getDialogThemedContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/kustom/api/dashboard/R$bool;->kustom_dashboard_light_theme:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lorg/kustom/api/dashboard/R$style;->KustomDashboardTheme_Light_Dialog:I

    :goto_0
    invoke-direct {v1, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 32
    return-object v1

    .line 34
    :cond_0
    sget v0, Lorg/kustom/api/dashboard/R$style;->KustomDashboardTheme_Dark_Dialog:I

    goto :goto_0
.end method

.method public static getThemeColor(Landroid/content/Context;I)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "attr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 18
    invoke-static {p0}, Lorg/kustom/api/dashboard/utils/ThemeHelper;->getThemeResource(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [I

    aput p1, v4, v5

    .line 17
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 21
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 22
    .local v1, "color":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 23
    return v1
.end method

.method public static getThemeResource(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/kustom/api/dashboard/R$bool;->kustom_dashboard_light_theme:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lorg/kustom/api/dashboard/R$style;->KustomDashboardTheme_Light:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lorg/kustom/api/dashboard/R$style;->KustomDashboardTheme_Dark:I

    goto :goto_0
.end method
