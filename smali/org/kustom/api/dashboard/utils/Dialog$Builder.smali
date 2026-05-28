.class public Lorg/kustom/api/dashboard/utils/Dialog$Builder;
.super Ljava/lang/Object;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kustom/api/dashboard/utils/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mButtonCallback:Lorg/kustom/api/dashboard/utils/Dialog$ButtonCallback;

.field private mContent:Ljava/lang/String;

.field private mContentId:I

.field private final mContext:Landroid/content/Context;

.field private mNegativeTextId:I

.field private mNeutralTextId:I

.field private mPositiveTextId:I

.field private mTitle:Ljava/lang/String;

.field private mTitleId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mTitle:Ljava/lang/String;

    .line 65
    iput v1, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mTitleId:I

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mContent:Ljava/lang/String;

    .line 67
    iput v1, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mContentId:I

    .line 68
    iput v1, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mPositiveTextId:I

    .line 69
    iput v1, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mNeutralTextId:I

    .line 70
    iput v1, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mNegativeTextId:I

    .line 74
    iput-object p1, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mContext:Landroid/content/Context;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lorg/kustom/api/dashboard/utils/Dialog$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/kustom/api/dashboard/utils/Dialog$Builder;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lorg/kustom/api/dashboard/utils/Dialog$Builder;)Lorg/kustom/api/dashboard/utils/Dialog$ButtonCallback;
    .locals 1
    .param p0, "x0"    # Lorg/kustom/api/dashboard/utils/Dialog$Builder;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mButtonCallback:Lorg/kustom/api/dashboard/utils/Dialog$ButtonCallback;

    return-object v0
.end method


# virtual methods
.method public build()Lorg/kustom/api/dashboard/utils/Dialog;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lorg/kustom/api/dashboard/utils/Dialog;

    invoke-direct {v0, p0}, Lorg/kustom/api/dashboard/utils/Dialog;-><init>(Lorg/kustom/api/dashboard/utils/Dialog$Builder;)V

    return-object v0
.end method

.method getContent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    iget v0, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mContentId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mContext:Landroid/content/Context;

    iget v1, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mContentId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mContent:Ljava/lang/String;

    goto :goto_0
.end method

.method getNegativeText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    iget v0, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mNegativeTextId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mContext:Landroid/content/Context;

    iget v1, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mNegativeTextId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method getNeutralText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    iget v0, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mNeutralTextId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mContext:Landroid/content/Context;

    iget v1, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mNeutralTextId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method getPositiveText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    iget v0, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mPositiveTextId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mContext:Landroid/content/Context;

    iget v1, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mPositiveTextId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    iget v0, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mTitleId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mContext:Landroid/content/Context;

    iget v1, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mTitleId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public setButtonCallback(Lorg/kustom/api/dashboard/utils/Dialog$ButtonCallback;)Lorg/kustom/api/dashboard/utils/Dialog$Builder;
    .locals 0
    .param p1, "buttonCallback"    # Lorg/kustom/api/dashboard/utils/Dialog$ButtonCallback;

    .prologue
    .line 102
    iput-object p1, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mButtonCallback:Lorg/kustom/api/dashboard/utils/Dialog$ButtonCallback;

    .line 103
    return-object p0
.end method

.method public setContent(I)Lorg/kustom/api/dashboard/utils/Dialog$Builder;
    .locals 0
    .param p1, "content"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 92
    iput p1, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mContentId:I

    .line 93
    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lorg/kustom/api/dashboard/utils/Dialog$Builder;
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mContent:Ljava/lang/String;

    .line 98
    return-object p0
.end method

.method public setNegativeText(I)Lorg/kustom/api/dashboard/utils/Dialog$Builder;
    .locals 0
    .param p1, "negativeTextId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 117
    iput p1, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mNegativeTextId:I

    .line 118
    return-object p0
.end method

.method public setNeutralText(I)Lorg/kustom/api/dashboard/utils/Dialog$Builder;
    .locals 0
    .param p1, "neutralTextId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 112
    iput p1, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mNeutralTextId:I

    .line 113
    return-object p0
.end method

.method public setPositiveText(I)Lorg/kustom/api/dashboard/utils/Dialog$Builder;
    .locals 0
    .param p1, "positiveText"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 107
    iput p1, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mPositiveTextId:I

    .line 108
    return-object p0
.end method

.method public setTitle(I)Lorg/kustom/api/dashboard/utils/Dialog$Builder;
    .locals 0
    .param p1, "title"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 87
    iput p1, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mTitleId:I

    .line 88
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lorg/kustom/api/dashboard/utils/Dialog$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->mTitle:Ljava/lang/String;

    .line 83
    return-object p0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lorg/kustom/api/dashboard/utils/Dialog$Builder;->build()Lorg/kustom/api/dashboard/utils/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/kustom/api/dashboard/utils/Dialog;->show()V

    .line 123
    return-void
.end method
