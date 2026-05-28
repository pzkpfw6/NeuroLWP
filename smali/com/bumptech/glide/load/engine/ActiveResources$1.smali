.class Lcom/bumptech/glide/load/engine/ActiveResources$1;
.super Ljava/lang/Object;
.source "ActiveResources.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/ActiveResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/load/engine/ActiveResources;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/ActiveResources;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bumptech/glide/load/engine/ActiveResources;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/ActiveResources$1;->this$0:Lcom/bumptech/glide/load/engine/ActiveResources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 29
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 30
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/ActiveResources$1;->this$0:Lcom/bumptech/glide/load/engine/ActiveResources;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/load/engine/ActiveResources;->cleanupActiveReference(Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;)V

    move v0, v1

    .line 33
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
