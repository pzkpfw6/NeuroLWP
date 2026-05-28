.class final Lcom/mikepenz/fastadapter/IAdapterNotifier$2;
.super Ljava/lang/Object;
.source "IAdapterNotifier.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/IAdapterNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/fastadapter/IAdapterNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Lcom/mikepenz/fastadapter/FastAdapter;III)Z
    .locals 2
    .param p1, "fastAdapter"    # Lcom/mikepenz/fastadapter/FastAdapter;
    .param p2, "newItemsCount"    # I
    .param p3, "previousItemsCount"    # I
    .param p4, "itemsBeforeThisAdapter"    # I

    .prologue
    .line 37
    if-le p2, p3, :cond_1

    .line 38
    if-lez p3, :cond_0

    .line 39
    invoke-virtual {p1, p4, p3}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeChanged(II)V

    .line 41
    :cond_0
    add-int v0, p4, p3

    sub-int v1, p2, p3

    invoke-virtual {p1, v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeInserted(II)V

    .line 51
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 42
    :cond_1
    if-lez p2, :cond_2

    if-ge p2, p3, :cond_2

    .line 43
    invoke-virtual {p1, p4, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeChanged(II)V

    .line 44
    add-int v0, p4, p2

    sub-int v1, p3, p2

    invoke-virtual {p1, v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeRemoved(II)V

    goto :goto_0

    .line 45
    :cond_2
    if-nez p2, :cond_3

    .line 46
    invoke-virtual {p1, p4, p3}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeRemoved(II)V

    goto :goto_0

    .line 49
    :cond_3
    invoke-virtual {p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterDataSetChanged()V

    goto :goto_0
.end method
