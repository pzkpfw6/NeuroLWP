.class Lcom/mikepenz/fastadapter/FastAdapter$2;
.super Lcom/mikepenz/fastadapter/listeners/LongClickEventHook;
.source "FastAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/fastadapter/FastAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mikepenz/fastadapter/listeners/LongClickEventHook",
        "<TItem;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mikepenz/fastadapter/FastAdapter;


# direct methods
.method constructor <init>(Lcom/mikepenz/fastadapter/FastAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mikepenz/fastadapter/FastAdapter;

    .prologue
    .line 589
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter$2;, "Lcom/mikepenz/fastadapter/FastAdapter$2;"
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter$2;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-direct {p0}, Lcom/mikepenz/fastadapter/listeners/LongClickEventHook;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;TItem;)Z"
        }
    .end annotation

    .prologue
    .line 592
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter$2;, "Lcom/mikepenz/fastadapter/FastAdapter$2;"
    .local p3, "fastAdapter":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    .local p4, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    const/4 v1, 0x0

    .line 593
    .local v1, "consumed":Z
    invoke-virtual {p3, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->getAdapter(I)Lcom/mikepenz/fastadapter/IAdapter;

    move-result-object v0

    .line 594
    .local v0, "adapter":Lcom/mikepenz/fastadapter/IAdapter;, "Lcom/mikepenz/fastadapter/IAdapter<TItem;>;"
    if-eqz v0, :cond_2

    if-eqz p4, :cond_2

    invoke-interface {p4}, Lcom/mikepenz/fastadapter/IItem;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 596
    invoke-static {p3}, Lcom/mikepenz/fastadapter/FastAdapter;->access$300(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 597
    invoke-static {p3}, Lcom/mikepenz/fastadapter/FastAdapter;->access$300(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;

    move-result-object v3

    invoke-interface {v3, p1, v0, p4, p2}, Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;->onLongClick(Landroid/view/View;Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/fastadapter/IItem;I)Z

    move-result v1

    .line 601
    :cond_0
    invoke-static {p3}, Lcom/mikepenz/fastadapter/FastAdapter;->access$100(Lcom/mikepenz/fastadapter/FastAdapter;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IAdapterExtension;

    .line 602
    .local v2, "ext":Lcom/mikepenz/fastadapter/IAdapterExtension;, "Lcom/mikepenz/fastadapter/IAdapterExtension<TItem;>;"
    if-nez v1, :cond_1

    .line 603
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/mikepenz/fastadapter/IAdapterExtension;->onLongClick(Landroid/view/View;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)Z

    move-result v1

    .line 607
    goto :goto_0

    .line 610
    .end local v2    # "ext":Lcom/mikepenz/fastadapter/IAdapterExtension;, "Lcom/mikepenz/fastadapter/IAdapterExtension<TItem;>;"
    :cond_1
    if-nez v1, :cond_2

    invoke-static {p3}, Lcom/mikepenz/fastadapter/FastAdapter;->access$400(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 611
    invoke-static {p3}, Lcom/mikepenz/fastadapter/FastAdapter;->access$400(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;

    move-result-object v3

    invoke-interface {v3, p1, v0, p4, p2}, Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;->onLongClick(Landroid/view/View;Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/fastadapter/IItem;I)Z

    move-result v1

    .line 614
    :cond_2
    return v1
.end method
