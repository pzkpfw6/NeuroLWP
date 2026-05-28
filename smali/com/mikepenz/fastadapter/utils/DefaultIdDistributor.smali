.class public abstract Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor;
.super Ljava/lang/Object;
.source "DefaultIdDistributor.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/IIdDistributor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Identifiable::",
        "Lcom/mikepenz/fastadapter/IIdentifyable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/IIdDistributor",
        "<TIdentifiable;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    .local p0, "this":Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor;, "Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor<TIdentifiable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkId(Lcom/mikepenz/fastadapter/IIdentifyable;)Lcom/mikepenz/fastadapter/IIdentifyable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIdentifiable;)TIdentifiable;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor;, "Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor<TIdentifiable;>;"
    .local p1, "item":Lcom/mikepenz/fastadapter/IIdentifyable;, "TIdentifiable;"
    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IIdentifyable;->getIdentifier()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor;->nextId(Lcom/mikepenz/fastadapter/IIdentifyable;)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/mikepenz/fastadapter/IIdentifyable;->withIdentifier(J)Ljava/lang/Object;

    .line 52
    :cond_0
    return-object p1
.end method

.method public checkIds(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TIdentifiable;>;)",
            "Ljava/util/List",
            "<TIdentifiable;>;"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor;, "Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor<TIdentifiable;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TIdentifiable;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 22
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IIdentifyable;

    invoke-virtual {p0, v2}, Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor;->checkId(Lcom/mikepenz/fastadapter/IIdentifyable;)Lcom/mikepenz/fastadapter/IIdentifyable;

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    :cond_0
    return-object p1
.end method

.method public varargs checkIds([Lcom/mikepenz/fastadapter/IIdentifyable;)[Lcom/mikepenz/fastadapter/IIdentifyable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TIdentifiable;)[TIdentifiable;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor;, "Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor<TIdentifiable;>;"
    .local p1, "items":[Lcom/mikepenz/fastadapter/IIdentifyable;, "[TIdentifiable;"
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 36
    .local v0, "item":Lcom/mikepenz/fastadapter/IIdentifyable;, "TIdentifiable;"
    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor;->checkId(Lcom/mikepenz/fastadapter/IIdentifyable;)Lcom/mikepenz/fastadapter/IIdentifyable;

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .end local v0    # "item":Lcom/mikepenz/fastadapter/IIdentifyable;, "TIdentifiable;"
    :cond_0
    return-object p1
.end method
