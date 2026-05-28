.class public abstract Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FastAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/fastadapter/FastAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 1341
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;, "Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder<TItem;>;"
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1342
    return-void
.end method


# virtual methods
.method public attachToWindow(Lcom/mikepenz/fastadapter/IItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    .prologue
    .line 1358
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;, "Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder<TItem;>;"
    .local p1, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    return-void
.end method

.method public abstract bindView(Lcom/mikepenz/fastadapter/IItem;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public detachFromWindow(Lcom/mikepenz/fastadapter/IItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    .prologue
    .line 1364
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;, "Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder<TItem;>;"
    .local p1, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    return-void
.end method

.method public failedToRecycle(Lcom/mikepenz/fastadapter/IItem;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)Z"
        }
    .end annotation

    .prologue
    .line 1372
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;, "Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder<TItem;>;"
    .local p1, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract unbindView(Lcom/mikepenz/fastadapter/IItem;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation
.end method
