.class public Lorg/kustom/skin/dashboard/glide/KustomAppGlideModule;
.super Lcom/bumptech/glide/module/AppGlideModule;
.source "KustomAppGlideModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/bumptech/glide/module/AppGlideModule;-><init>()V

    return-void
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "builder"    # Lcom/bumptech/glide/GlideBuilder;

    .prologue
    .line 17
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/GlideBuilder;->setLogLevel(I)Lcom/bumptech/glide/GlideBuilder;

    .line 18
    return-void
.end method
