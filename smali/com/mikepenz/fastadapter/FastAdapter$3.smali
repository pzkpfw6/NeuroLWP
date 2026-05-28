.class Lcom/mikepenz/fastadapter/FastAdapter$3;
.super Lcom/mikepenz/fastadapter/listeners/TouchEventHook;
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
        "Lcom/mikepenz/fastadapter/listeners/TouchEventHook",
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
    .line 621
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter$3;, "Lcom/mikepenz/fastadapter/FastAdapter$3;"
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter$3;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-direct {p0}, Lcom/mikepenz/fastadapter/listeners/TouchEventHook;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "position"    # I
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

    .prologue
    .line 624
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter$3;, "Lcom/mikepenz/fastadapter/FastAdapter$3;"
    .local p4, "fastAdapter":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    .local p5, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    const/4 v7, 0x0

    .line 626
    .local v7, "consumed":Z
    invoke-static {p4}, Lcom/mikepenz/fastadapter/FastAdapter;->access$100(Lcom/mikepenz/fastadapter/FastAdapter;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IAdapterExtension;

    .line 627
    .local v0, "ext":Lcom/mikepenz/fastadapter/IAdapterExtension;, "Lcom/mikepenz/fastadapter/IAdapterExtension<TItem;>;"
    if-nez v7, :cond_0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 628
    invoke-interface/range {v0 .. v5}, Lcom/mikepenz/fastadapter/IAdapterExtension;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)Z

    move-result v7

    .line 632
    goto :goto_0

    .line 633
    .end local v0    # "ext":Lcom/mikepenz/fastadapter/IAdapterExtension;, "Lcom/mikepenz/fastadapter/IAdapterExtension<TItem;>;"
    :cond_0
    invoke-static {p4}, Lcom/mikepenz/fastadapter/FastAdapter;->access$500(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/listeners/OnTouchListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 634
    invoke-virtual {p4, p3}, Lcom/mikepenz/fastadapter/FastAdapter;->getAdapter(I)Lcom/mikepenz/fastadapter/IAdapter;

    move-result-object v4

    .line 635
    .local v4, "adapter":Lcom/mikepenz/fastadapter/IAdapter;, "Lcom/mikepenz/fastadapter/IAdapter<TItem;>;"
    if-eqz v4, :cond_1

    .line 636
    invoke-static {p4}, Lcom/mikepenz/fastadapter/FastAdapter;->access$500(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/listeners/OnTouchListener;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v5, p5

    move v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/mikepenz/fastadapter/listeners/OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/fastadapter/IItem;I)Z

    move-result v7

    .line 639
    .end local v4    # "adapter":Lcom/mikepenz/fastadapter/IAdapter;, "Lcom/mikepenz/fastadapter/IAdapter<TItem;>;"
    .end local v7    # "consumed":Z
    :cond_1
    return v7
.end method
