.class public abstract Lcom/mikepenz/fastadapter/AbstractAdapter;
.super Ljava/lang/Object;
.source "AbstractAdapter.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/IAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/IAdapter",
        "<TItem;>;"
    }
.end annotation


# instance fields
.field protected mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;"
        }
    .end annotation
.end field

.field protected mOrder:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    .local p0, "this":Lcom/mikepenz/fastadapter/AbstractAdapter;, "Lcom/mikepenz/fastadapter/AbstractAdapter<TItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/mikepenz/fastadapter/AbstractAdapter;->mOrder:I

    return-void
.end method


# virtual methods
.method public getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/mikepenz/fastadapter/AbstractAdapter;, "Lcom/mikepenz/fastadapter/AbstractAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/AbstractAdapter;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lcom/mikepenz/fastadapter/AbstractAdapter;, "Lcom/mikepenz/fastadapter/AbstractAdapter<TItem;>;"
    iget v0, p0, Lcom/mikepenz/fastadapter/AbstractAdapter;->mOrder:I

    return v0
.end method

.method public mapPossibleTypes(Ljava/lang/Iterable;)V
    .locals 3
    .param p1    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TItem;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/mikepenz/fastadapter/AbstractAdapter;, "Lcom/mikepenz/fastadapter/AbstractAdapter<TItem;>;"
    .local p1, "items":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TItem;>;"
    if-eqz p1, :cond_0

    .line 56
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IItem;

    .line 57
    .local v0, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    iget-object v2, p0, Lcom/mikepenz/fastadapter/AbstractAdapter;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v2, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->registerTypeInstance(Lcom/mikepenz/fastadapter/IItem;)V

    goto :goto_0

    .line 60
    .end local v0    # "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    :cond_0
    return-void
.end method

.method public setOrder(I)V
    .locals 0
    .param p1, "order"    # I

    .prologue
    .line 46
    .local p0, "this":Lcom/mikepenz/fastadapter/AbstractAdapter;, "Lcom/mikepenz/fastadapter/AbstractAdapter<TItem;>;"
    iput p1, p0, Lcom/mikepenz/fastadapter/AbstractAdapter;->mOrder:I

    .line 47
    return-void
.end method

.method public withFastAdapter(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/AbstractAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;)",
            "Lcom/mikepenz/fastadapter/AbstractAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/mikepenz/fastadapter/AbstractAdapter;, "Lcom/mikepenz/fastadapter/AbstractAdapter<TItem;>;"
    .local p1, "fastAdapter":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iput-object p1, p0, Lcom/mikepenz/fastadapter/AbstractAdapter;->mFastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    .line 19
    return-object p0
.end method

.method public bridge synthetic withFastAdapter(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/IAdapter;
    .locals 1

    .prologue
    .line 8
    .local p0, "this":Lcom/mikepenz/fastadapter/AbstractAdapter;, "Lcom/mikepenz/fastadapter/AbstractAdapter<TItem;>;"
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/AbstractAdapter;->withFastAdapter(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/AbstractAdapter;

    move-result-object v0

    return-object v0
.end method
