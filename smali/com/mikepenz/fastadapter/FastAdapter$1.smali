.class Lcom/mikepenz/fastadapter/FastAdapter$1;
.super Lcom/mikepenz/fastadapter/listeners/ClickEventHook;
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
        "Lcom/mikepenz/fastadapter/listeners/ClickEventHook",
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
    .line 548
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter$1;, "Lcom/mikepenz/fastadapter/FastAdapter$1;"
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter$1;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-direct {p0}, Lcom/mikepenz/fastadapter/listeners/ClickEventHook;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;TItem;)V"
        }
    .end annotation

    .prologue
    .line 551
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter$1;, "Lcom/mikepenz/fastadapter/FastAdapter$1;"
    .local p3, "fastAdapter":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    .local p4, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    invoke-virtual {p3, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->getAdapter(I)Lcom/mikepenz/fastadapter/IAdapter;

    move-result-object v0

    .line 552
    .local v0, "adapter":Lcom/mikepenz/fastadapter/IAdapter;, "Lcom/mikepenz/fastadapter/IAdapter<TItem;>;"
    if-eqz v0, :cond_4

    if-eqz p4, :cond_4

    invoke-interface {p4}, Lcom/mikepenz/fastadapter/IItem;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 553
    const/4 v1, 0x0

    .line 555
    .local v1, "consumed":Z
    instance-of v3, p4, Lcom/mikepenz/fastadapter/IClickable;

    if-eqz v3, :cond_0

    move-object v3, p4

    check-cast v3, Lcom/mikepenz/fastadapter/IClickable;

    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IClickable;->getOnPreItemClickListener()Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v3, p4

    .line 556
    check-cast v3, Lcom/mikepenz/fastadapter/IClickable;

    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IClickable;->getOnPreItemClickListener()Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    move-result-object v3

    invoke-interface {v3, p1, v0, p4, p2}, Lcom/mikepenz/fastadapter/listeners/OnClickListener;->onClick(Landroid/view/View;Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/fastadapter/IItem;I)Z

    move-result v1

    .line 560
    :cond_0
    if-nez v1, :cond_1

    invoke-static {p3}, Lcom/mikepenz/fastadapter/FastAdapter;->access$000(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 561
    invoke-static {p3}, Lcom/mikepenz/fastadapter/FastAdapter;->access$000(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    move-result-object v3

    invoke-interface {v3, p1, v0, p4, p2}, Lcom/mikepenz/fastadapter/listeners/OnClickListener;->onClick(Landroid/view/View;Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/fastadapter/IItem;I)Z

    move-result v1

    .line 565
    :cond_1
    invoke-static {p3}, Lcom/mikepenz/fastadapter/FastAdapter;->access$100(Lcom/mikepenz/fastadapter/FastAdapter;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IAdapterExtension;

    .line 566
    .local v2, "ext":Lcom/mikepenz/fastadapter/IAdapterExtension;, "Lcom/mikepenz/fastadapter/IAdapterExtension<TItem;>;"
    if-nez v1, :cond_2

    .line 567
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/mikepenz/fastadapter/IAdapterExtension;->onClick(Landroid/view/View;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)Z

    move-result v1

    .line 571
    goto :goto_0

    .line 574
    .end local v2    # "ext":Lcom/mikepenz/fastadapter/IAdapterExtension;, "Lcom/mikepenz/fastadapter/IAdapterExtension<TItem;>;"
    :cond_2
    if-nez v1, :cond_3

    instance-of v3, p4, Lcom/mikepenz/fastadapter/IClickable;

    if-eqz v3, :cond_3

    move-object v3, p4

    check-cast v3, Lcom/mikepenz/fastadapter/IClickable;

    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IClickable;->getOnItemClickListener()Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object v3, p4

    .line 575
    check-cast v3, Lcom/mikepenz/fastadapter/IClickable;

    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IClickable;->getOnItemClickListener()Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    move-result-object v3

    invoke-interface {v3, p1, v0, p4, p2}, Lcom/mikepenz/fastadapter/listeners/OnClickListener;->onClick(Landroid/view/View;Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/fastadapter/IItem;I)Z

    move-result v1

    .line 579
    :cond_3
    if-nez v1, :cond_4

    invoke-static {p3}, Lcom/mikepenz/fastadapter/FastAdapter;->access$200(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 580
    invoke-static {p3}, Lcom/mikepenz/fastadapter/FastAdapter;->access$200(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    move-result-object v3

    invoke-interface {v3, p1, v0, p4, p2}, Lcom/mikepenz/fastadapter/listeners/OnClickListener;->onClick(Landroid/view/View;Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/fastadapter/IItem;I)Z

    .line 583
    .end local v1    # "consumed":Z
    :cond_4
    return-void
.end method
