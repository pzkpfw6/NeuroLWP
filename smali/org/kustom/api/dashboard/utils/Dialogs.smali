.class public Lorg/kustom/api/dashboard/utils/Dialogs;
.super Ljava/lang/Object;
.source "Dialogs.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method static final synthetic lambda$showAppNotInstalledDialog$1$Dialogs(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "pkg"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "view"    # Landroid/view/View;
    .param p3, "id"    # I

    .prologue
    .line 49
    sget v0, Lorg/kustom/api/dashboard/utils/Dialog;->BUTTON_POSITIVE:I

    if-ne p3, v0, :cond_0

    .line 50
    invoke-static {p0, p1}, Lorg/kustom/api/dashboard/utils/ActivityUtils;->openPkgStoreUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method

.method static final synthetic lambda$showInfoDialog$0$Dialogs(Landroid/content/Context;Landroid/content/ComponentName;Landroid/view/View;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "component"    # Landroid/content/ComponentName;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "view"    # Landroid/view/View;
    .param p3, "id"    # I

    .prologue
    .line 28
    sget v0, Lorg/kustom/api/dashboard/utils/Dialog;->BUTTON_POSITIVE:I

    if-ne p3, v0, :cond_1

    .line 29
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/kustom/api/dashboard/utils/ActivityUtils;->openPkgStoreUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    sget v0, Lorg/kustom/api/dashboard/utils/Dialog;->BUTTON_NEUTRAL:I

    if-ne p3, v0, :cond_0

    .line 31
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/kustom/api/dashboard/utils/ActivityUtils;->hideFromLauncher(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 32
    new-instance v0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/kustom/api/dashboard/utils/Dialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/kustom/api/dashboard/R$string;->hide_from_launcher:I

    .line 33
    invoke-virtual {v0, v1}, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->setTitle(I)Lorg/kustom/api/dashboard/utils/Dialog$Builder;

    move-result-object v0

    sget v1, Lorg/kustom/api/dashboard/R$string;->hide_from_launcher_done:I

    .line 34
    invoke-virtual {v0, v1}, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->setContent(I)Lorg/kustom/api/dashboard/utils/Dialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    .line 35
    invoke-virtual {v0, v1}, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->setPositiveText(I)Lorg/kustom/api/dashboard/utils/Dialog$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->show()V

    goto :goto_0
.end method

.method public static showAppNotInstalledDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "pkg"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    new-instance v0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;

    invoke-direct {v0, p0}, Lorg/kustom/api/dashboard/utils/Dialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/kustom/api/dashboard/R$string;->kustom_not_installed:I

    .line 44
    invoke-virtual {v0, v1}, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->setTitle(I)Lorg/kustom/api/dashboard/utils/Dialog$Builder;

    move-result-object v0

    sget v1, Lorg/kustom/api/dashboard/R$string;->kustom_not_installed_desc:I

    .line 45
    invoke-virtual {v0, v1}, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->setContent(I)Lorg/kustom/api/dashboard/utils/Dialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    .line 46
    invoke-virtual {v0, v1}, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->setNegativeText(I)Lorg/kustom/api/dashboard/utils/Dialog$Builder;

    move-result-object v0

    sget v1, Lorg/kustom/api/dashboard/R$string;->install:I

    .line 47
    invoke-virtual {v0, v1}, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->setPositiveText(I)Lorg/kustom/api/dashboard/utils/Dialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/kustom/api/dashboard/utils/Dialogs$$Lambda$1;

    invoke-direct {v1, p0, p1}, Lorg/kustom/api/dashboard/utils/Dialogs$$Lambda$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, v1}, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->setButtonCallback(Lorg/kustom/api/dashboard/utils/Dialog$ButtonCallback;)Lorg/kustom/api/dashboard/utils/Dialog$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->show()V

    .line 53
    return-void
.end method

.method public static showInfoDialog(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "component"    # Landroid/content/ComponentName;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    new-instance v0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;

    invoke-direct {v0, p0}, Lorg/kustom/api/dashboard/utils/Dialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/kustom/api/dashboard/R$string;->kustom_pack_title:I

    .line 22
    invoke-virtual {v0, v1}, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->setTitle(I)Lorg/kustom/api/dashboard/utils/Dialog$Builder;

    move-result-object v0

    sget v1, Lorg/kustom/api/dashboard/R$string;->kustom_pack_description:I

    .line 23
    invoke-virtual {v0, v1}, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->setContent(I)Lorg/kustom/api/dashboard/utils/Dialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    .line 24
    invoke-virtual {v0, v1}, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->setNegativeText(I)Lorg/kustom/api/dashboard/utils/Dialog$Builder;

    move-result-object v0

    sget v1, Lorg/kustom/api/dashboard/R$string;->rate_app:I

    .line 25
    invoke-virtual {v0, v1}, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->setPositiveText(I)Lorg/kustom/api/dashboard/utils/Dialog$Builder;

    move-result-object v0

    sget v1, Lorg/kustom/api/dashboard/R$string;->hide_from_launcher:I

    .line 26
    invoke-virtual {v0, v1}, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->setNeutralText(I)Lorg/kustom/api/dashboard/utils/Dialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/kustom/api/dashboard/utils/Dialogs$$Lambda$0;

    invoke-direct {v1, p0, p1}, Lorg/kustom/api/dashboard/utils/Dialogs$$Lambda$0;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 27
    invoke-virtual {v0, v1}, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->setButtonCallback(Lorg/kustom/api/dashboard/utils/Dialog$ButtonCallback;)Lorg/kustom/api/dashboard/utils/Dialog$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->show()V

    .line 40
    return-void
.end method

.method public static showOpenKomponentDialog(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 56
    new-instance v0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;

    invoke-direct {v0, p0}, Lorg/kustom/api/dashboard/utils/Dialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Komponents"

    .line 57
    invoke-virtual {v0, v1}, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->setTitle(Ljava/lang/String;)Lorg/kustom/api/dashboard/utils/Dialog$Builder;

    move-result-object v0

    sget v1, Lorg/kustom/api/dashboard/R$string;->komponent_open:I

    .line 58
    invoke-virtual {v0, v1}, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->setContent(I)Lorg/kustom/api/dashboard/utils/Dialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    .line 59
    invoke-virtual {v0, v1}, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->setPositiveText(I)Lorg/kustom/api/dashboard/utils/Dialog$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->show()V

    .line 61
    return-void
.end method
