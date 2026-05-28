.class public abstract Lcom/bumptech/glide/request/target/BaseTarget;
.super Ljava/lang/Object;
.source "BaseTarget.java"

# interfaces
.implements Lcom/bumptech/glide/request/target/Target;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/target/Target",
        "<TZ;>;"
    }
.end annotation


# instance fields
.field private request:Lcom/bumptech/glide/request/Request;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    .local p0, "this":Lcom/bumptech/glide/request/target/BaseTarget;, "Lcom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequest()Lcom/bumptech/glide/request/Request;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/bumptech/glide/request/target/BaseTarget;, "Lcom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/target/BaseTarget;->request:Lcom/bumptech/glide/request/Request;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 64
    .local p0, "this":Lcom/bumptech/glide/request/target/BaseTarget;, "Lcom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 39
    .local p0, "this":Lcom/bumptech/glide/request/target/BaseTarget;, "Lcom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "errorDrawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 49
    .local p0, "this":Lcom/bumptech/glide/request/target/BaseTarget;, "Lcom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 44
    .local p0, "this":Lcom/bumptech/glide/request/target/BaseTarget;, "Lcom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 54
    .local p0, "this":Lcom/bumptech/glide/request/target/BaseTarget;, "Lcom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 59
    .local p0, "this":Lcom/bumptech/glide/request/target/BaseTarget;, "Lcom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    return-void
.end method

.method public setRequest(Lcom/bumptech/glide/request/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/bumptech/glide/request/Request;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 27
    .local p0, "this":Lcom/bumptech/glide/request/target/BaseTarget;, "Lcom/bumptech/glide/request/target/BaseTarget<TZ;>;"
    iput-object p1, p0, Lcom/bumptech/glide/request/target/BaseTarget;->request:Lcom/bumptech/glide/request/Request;

    .line 28
    return-void
.end method
