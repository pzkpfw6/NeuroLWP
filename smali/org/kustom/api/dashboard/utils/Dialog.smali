.class public Lorg/kustom/api/dashboard/utils/Dialog;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kustom/api/dashboard/utils/Dialog$ButtonCallback;,
        Lorg/kustom/api/dashboard/utils/Dialog$Builder;
    }
.end annotation


# static fields
.field public static final BUTTON_NEGATIVE:I

.field public static final BUTTON_NEUTRAL:I

.field public static final BUTTON_POSITIVE:I


# instance fields
.field private mCallback:Lorg/kustom/api/dashboard/utils/Dialog$ButtonCallback;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget v0, Lorg/kustom/api/dashboard/R$id;->button_positive:I

    sput v0, Lorg/kustom/api/dashboard/utils/Dialog;->BUTTON_POSITIVE:I

    .line 21
    sget v0, Lorg/kustom/api/dashboard/R$id;->button_neutral:I

    sput v0, Lorg/kustom/api/dashboard/utils/Dialog;->BUTTON_NEUTRAL:I

    .line 22
    sget v0, Lorg/kustom/api/dashboard/R$id;->button_negative:I

    sput v0, Lorg/kustom/api/dashboard/utils/Dialog;->BUTTON_NEGATIVE:I

    return-void
.end method

.method public constructor <init>(Lorg/kustom/api/dashboard/utils/Dialog$Builder;)V
    .locals 3
    .param p1, "builder"    # Lorg/kustom/api/dashboard/utils/Dialog$Builder;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->access$000(Lorg/kustom/api/dashboard/utils/Dialog$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/kustom/api/dashboard/utils/ThemeHelper;->getDialogThemedContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 26
    .local v0, "context":Landroid/content/Context;
    invoke-static {p1}, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->access$100(Lorg/kustom/api/dashboard/utils/Dialog$Builder;)Lorg/kustom/api/dashboard/utils/Dialog$ButtonCallback;

    move-result-object v1

    iput-object v1, p0, Lorg/kustom/api/dashboard/utils/Dialog;->mCallback:Lorg/kustom/api/dashboard/utils/Dialog$ButtonCallback;

    .line 27
    sget v1, Lorg/kustom/api/dashboard/R$layout;->kustom_dashboard_dialog:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lorg/kustom/api/dashboard/utils/Dialog;->mView:Landroid/view/View;

    .line 28
    iget-object v1, p0, Lorg/kustom/api/dashboard/utils/Dialog;->mView:Landroid/view/View;

    sget v2, Lorg/kustom/api/dashboard/R$id;->title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v1, p0, Lorg/kustom/api/dashboard/utils/Dialog;->mView:Landroid/view/View;

    sget v2, Lorg/kustom/api/dashboard/R$id;->content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    sget v1, Lorg/kustom/api/dashboard/utils/Dialog;->BUTTON_POSITIVE:I

    invoke-virtual {p1}, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->getPositiveText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/kustom/api/dashboard/utils/Dialog;->setButtonText(ILjava/lang/String;)V

    .line 31
    sget v1, Lorg/kustom/api/dashboard/utils/Dialog;->BUTTON_NEUTRAL:I

    invoke-virtual {p1}, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->getNeutralText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/kustom/api/dashboard/utils/Dialog;->setButtonText(ILjava/lang/String;)V

    .line 32
    sget v1, Lorg/kustom/api/dashboard/utils/Dialog;->BUTTON_NEGATIVE:I

    invoke-virtual {p1}, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->getNegativeText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/kustom/api/dashboard/utils/Dialog;->setButtonText(ILjava/lang/String;)V

    .line 33
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lorg/kustom/api/dashboard/utils/Dialog;->mView:Landroid/view/View;

    .line 35
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lorg/kustom/api/dashboard/utils/Dialog;->mDialog:Landroid/app/AlertDialog;

    .line 37
    return-void
.end method

.method private setButtonText(ILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v1, p0, Lorg/kustom/api/dashboard/utils/Dialog;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "button":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    check-cast v0, Landroid/widget/Button;

    .end local v0    # "button":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_0
    return-void

    .line 57
    .restart local v0    # "button":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 41
    iget-object v1, p0, Lorg/kustom/api/dashboard/utils/Dialog;->mCallback:Lorg/kustom/api/dashboard/utils/Dialog$ButtonCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/kustom/api/dashboard/utils/Dialog;->mCallback:Lorg/kustom/api/dashboard/utils/Dialog$ButtonCallback;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lorg/kustom/api/dashboard/utils/Dialog$ButtonCallback;->onButtonClick(Landroid/view/View;I)V

    .line 43
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/kustom/api/dashboard/utils/Dialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/kustom/api/dashboard/utils/Dialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 51
    return-void
.end method
