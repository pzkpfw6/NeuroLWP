.class public abstract Lcom/mikepenz/fastadapter/listeners/TouchEventHook;
.super Ljava/lang/Object;
.source "TouchEventHook.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/listeners/EventHook;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/listeners/EventHook",
        "<TItem;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    .local p0, "this":Lcom/mikepenz/fastadapter/listeners/TouchEventHook;, "Lcom/mikepenz/fastadapter/listeners/TouchEventHook<TItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/view/View;
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/mikepenz/fastadapter/listeners/TouchEventHook;, "Lcom/mikepenz/fastadapter/listeners/TouchEventHook<TItem;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBindMany(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Ljava/util/List;
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcom/mikepenz/fastadapter/listeners/TouchEventHook;, "Lcom/mikepenz/fastadapter/listeners/TouchEventHook<TItem;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onTouch(Landroid/view/View;Landroid/view/MotionEvent;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/MotionEvent;",
            "I",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;TItem;)Z"
        }
    .end annotation
.end method
