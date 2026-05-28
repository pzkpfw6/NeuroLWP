.class public abstract Lcom/bumptech/glide/request/target/ViewTarget;
.super Lcom/bumptech/glide/request/target/BaseTarget;
.source "ViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/target/BaseTarget",
        "<TZ;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewTarget"

.field private static isTagUsedAtLeastOnce:Z

.field private static tagId:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private attachStateListener:Landroid/view/View$OnAttachStateChangeListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private isAttachStateListenerAdded:Z

.field private isClearedByUs:Z

.field private final sizeDeterminer:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

.field protected final view:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/BaseTarget;-><init>()V

    .line 61
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    .line 62
    new-instance v0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "waitForLayout"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/ViewTarget;-><init>(Landroid/view/View;)V

    .line 81
    if-eqz p2, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/bumptech/glide/request/target/ViewTarget;->waitForLayout()Lcom/bumptech/glide/request/target/ViewTarget;

    .line 84
    :cond_0
    return-void
.end method

.method private getTag()Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 288
    .local p0, "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    sget-object v0, Lcom/bumptech/glide/request/target/ViewTarget;->tagId:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 291
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    sget-object v1, Lcom/bumptech/glide/request/target/ViewTarget;->tagId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private maybeAddAttachStateListener()V
    .locals 2

    .prologue
    .line 178
    .local p0, "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->isAttachStateListenerAdded:Z

    if-eqz v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->isAttachStateListenerAdded:Z

    goto :goto_0
.end method

.method private maybeRemoveAttachStateListener()V
    .locals 2

    .prologue
    .line 187
    .local p0, "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->isAttachStateListenerAdded:Z

    if-nez v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->isAttachStateListenerAdded:Z

    goto :goto_0
.end method

.method private setTag(Ljava/lang/Object;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 278
    .local p0, "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    sget-object v0, Lcom/bumptech/glide/request/target/ViewTarget;->tagId:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 279
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bumptech/glide/request/target/ViewTarget;->isTagUsedAtLeastOnce:Z

    .line 280
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    sget-object v1, Lcom/bumptech/glide/request/target/ViewTarget;->tagId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static setTagId(I)V
    .locals 2
    .param p0, "tagId"    # I

    .prologue
    .line 316
    sget-object v0, Lcom/bumptech/glide/request/target/ViewTarget;->tagId:Ljava/lang/Integer;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/bumptech/glide/request/target/ViewTarget;->isTagUsedAtLeastOnce:Z

    if-eqz v0, :cond_1

    .line 317
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot set the tag id more than once or change the tag id after the first request has been made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/target/ViewTarget;->tagId:Ljava/lang/Integer;

    .line 321
    return-void
.end method


# virtual methods
.method public final clearOnDetach()Lcom/bumptech/glide/request/target/ViewTarget;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/target/ViewTarget",
            "<TT;TZ;>;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    .line 123
    :goto_0
    return-object p0

    .line 111
    :cond_0
    new-instance v0, Lcom/bumptech/glide/request/target/ViewTarget$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/request/target/ViewTarget$1;-><init>(Lcom/bumptech/glide/request/target/ViewTarget;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 122
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget;->maybeAddAttachStateListener()V

    goto :goto_0
.end method

.method public getRequest()Lcom/bumptech/glide/request/Request;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 260
    .local v1, "tag":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 261
    .local v0, "request":Lcom/bumptech/glide/request/Request;
    if-eqz v1, :cond_0

    .line 262
    instance-of v2, v1, Lcom/bumptech/glide/request/Request;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 263
    check-cast v0, Lcom/bumptech/glide/request/Request;

    .line 269
    :cond_0
    return-object v0

    .line 265
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "You must not call setTag() on a view Glide is targeting"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/bumptech/glide/request/target/SizeReadyCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    .line 216
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    return-object v0
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/target/BaseTarget;->onLoadCleared(Landroid/graphics/drawable/Drawable;)V

    .line 228
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->clearCallbacksAndListener()V

    .line 230
    iget-boolean v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->isClearedByUs:Z

    if-nez v0, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget;->maybeRemoveAttachStateListener()V

    .line 233
    :cond_0
    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/target/BaseTarget;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    .line 174
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget;->maybeAddAttachStateListener()V

    .line 175
    return-void
.end method

.method pauseMyRequest()V
    .locals 2

    .prologue
    .line 136
    .local p0, "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/request/target/ViewTarget;->getRequest()Lcom/bumptech/glide/request/Request;

    move-result-object v0

    .line 137
    .local v0, "request":Lcom/bumptech/glide/request/Request;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bumptech/glide/request/target/ViewTarget;->isClearedByUs:Z

    .line 139
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->pause()V

    .line 140
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bumptech/glide/request/target/ViewTarget;->isClearedByUs:Z

    .line 142
    :cond_0
    return-void
.end method

.method public removeCallback(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/bumptech/glide/request/target/SizeReadyCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 221
    .local p0, "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->removeCallback(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    .line 222
    return-void
.end method

.method resumeMyRequest()V
    .locals 2

    .prologue
    .line 128
    .local p0, "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/request/target/ViewTarget;->getRequest()Lcom/bumptech/glide/request/Request;

    move-result-object v0

    .line 129
    .local v0, "request":Lcom/bumptech/glide/request/Request;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->begin()V

    .line 132
    :cond_0
    return-void
.end method

.method public setRequest(Lcom/bumptech/glide/request/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/bumptech/glide/request/Request;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 242
    .local p0, "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/ViewTarget;->setTag(Ljava/lang/Object;)V

    .line 243
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 274
    .local p0, "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Target for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final waitForLayout()Lcom/bumptech/glide/request/target/ViewTarget;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/target/ViewTarget",
            "<TT;TZ;>;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->waitForLayout:Z

    .line 167
    return-object p0
.end method
