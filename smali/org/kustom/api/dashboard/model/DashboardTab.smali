.class public abstract Lorg/kustom/api/dashboard/model/DashboardTab;
.super Ljava/lang/Object;
.source "DashboardTab.java"


# instance fields
.field private final mTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/kustom/api/dashboard/model/DashboardTab;->mTitle:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lorg/kustom/api/dashboard/model/DashboardTab;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public abstract instantiatePage(Landroid/content/Context;)Landroid/view/View;
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
