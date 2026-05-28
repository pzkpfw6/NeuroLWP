.class public abstract Lcom/mikepenz/fastadapter/items/AbstractItem;
.super Ljava/lang/Object;
.source "AbstractItem.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/IItem;
.implements Lcom/mikepenz/fastadapter/IClickable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ":",
        "Lcom/mikepenz/fastadapter/IClickable;",
        "VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/IItem",
        "<TItem;TVH;>;",
        "Lcom/mikepenz/fastadapter/IClickable",
        "<TItem;>;"
    }
.end annotation


# instance fields
.field protected mEnabled:Z

.field protected mIdentifier:J

.field protected mOnItemClickListener:Lcom/mikepenz/fastadapter/listeners/OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/listeners/OnClickListener",
            "<TItem;>;"
        }
    .end annotation
.end field

.field protected mOnItemPreClickListener:Lcom/mikepenz/fastadapter/listeners/OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/listeners/OnClickListener",
            "<TItem;>;"
        }
    .end annotation
.end field

.field protected mSelectable:Z

.field protected mSelected:Z

.field protected mTag:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/mikepenz/fastadapter/items/AbstractItem;, "Lcom/mikepenz/fastadapter/items/AbstractItem<TItem;TVH;>;"
    const/4 v2, 0x1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mIdentifier:J

    .line 70
    iput-boolean v2, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mEnabled:Z

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mSelected:Z

    .line 115
    iput-boolean v2, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mSelectable:Z

    return-void
.end method


# virtual methods
.method public attachToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Lcom/mikepenz/fastadapter/items/AbstractItem;, "Lcom/mikepenz/fastadapter/items/AbstractItem<TItem;TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lcom/mikepenz/fastadapter/items/AbstractItem;, "Lcom/mikepenz/fastadapter/items/AbstractItem<TItem;TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    .local p2, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/items/AbstractItem;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 194
    return-void
.end method

.method public createView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 247
    .local p0, "this":Lcom/mikepenz/fastadapter/items/AbstractItem;, "Lcom/mikepenz/fastadapter/items/AbstractItem<TItem;TVH;>;"
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/items/AbstractItem;->getLayoutRes()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public detachFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Lcom/mikepenz/fastadapter/items/AbstractItem;, "Lcom/mikepenz/fastadapter/items/AbstractItem<TItem;TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public equals(I)Z
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 312
    .local p0, "this":Lcom/mikepenz/fastadapter/items/AbstractItem;, "Lcom/mikepenz/fastadapter/items/AbstractItem<TItem;TVH;>;"
    int-to-long v0, p1

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/items/AbstractItem;->getIdentifier()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/mikepenz/fastadapter/items/AbstractItem;, "Lcom/mikepenz/fastadapter/items/AbstractItem<TItem;TVH;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 323
    if-ne p0, p1, :cond_1

    .line 326
    :cond_0
    :goto_0
    return v1

    .line 324
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 325
    check-cast v0, Lcom/mikepenz/fastadapter/items/AbstractItem;

    .line 326
    .local v0, "that":Lcom/mikepenz/fastadapter/items/AbstractItem;, "Lcom/mikepenz/fastadapter/items/AbstractItem<**>;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/items/AbstractItem;->getIdentifier()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/items/AbstractItem;->getIdentifier()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public failedToRecycle(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, "this":Lcom/mikepenz/fastadapter/items/AbstractItem;, "Lcom/mikepenz/fastadapter/items/AbstractItem<TItem;TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    const/4 v0, 0x0

    return v0
.end method

.method public generateView(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 258
    .local p0, "this":Lcom/mikepenz/fastadapter/items/AbstractItem;, "Lcom/mikepenz/fastadapter/items/AbstractItem<TItem;TVH;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/mikepenz/fastadapter/items/AbstractItem;->createView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mikepenz/fastadapter/items/AbstractItem;->getViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 261
    .local v0, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/mikepenz/fastadapter/items/AbstractItem;->bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 264
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v1
.end method

.method public generateView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 276
    .local p0, "this":Lcom/mikepenz/fastadapter/items/AbstractItem;, "Lcom/mikepenz/fastadapter/items/AbstractItem<TItem;TVH;>;"
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/items/AbstractItem;->createView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mikepenz/fastadapter/items/AbstractItem;->getViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 279
    .local v0, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/mikepenz/fastadapter/items/AbstractItem;->bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 281
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v1
.end method

.method public getIdentifier()J
    .locals 2

    .prologue
    .line 44
    .local p0, "this":Lcom/mikepenz/fastadapter/items/AbstractItem;, "Lcom/mikepenz/fastadapter/items/AbstractItem<TItem;TVH;>;"
    iget-wide v0, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mIdentifier:J

    return-wide v0
.end method

.method public getOnItemClickListener()Lcom/mikepenz/fastadapter/listeners/OnClickListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/listeners/OnClickListener",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lcom/mikepenz/fastadapter/items/AbstractItem;, "Lcom/mikepenz/fastadapter/items/AbstractItem<TItem;TVH;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mOnItemClickListener:Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    return-object v0
.end method

.method public getOnPreItemClickListener()Lcom/mikepenz/fastadapter/listeners/OnClickListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/listeners/OnClickListener",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lcom/mikepenz/fastadapter/items/AbstractItem;, "Lcom/mikepenz/fastadapter/items/AbstractItem<TItem;TVH;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mOnItemPreClickListener:Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    .local p0, "this":Lcom/mikepenz/fastadapter/items/AbstractItem;, "Lcom/mikepenz/fastadapter/items/AbstractItem<TItem;TVH;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract getViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TVH;"
        }
    .end annotation
.end method

.method public getViewHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TVH;"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, "this":Lcom/mikepenz/fastadapter/items/AbstractItem;, "Lcom/mikepenz/fastadapter/items/AbstractItem<TItem;TVH;>;"
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/mikepenz/fastadapter/items/AbstractItem;->createView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/items/AbstractItem;->getViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 336
    .local p0, "this":Lcom/mikepenz/fastadapter/items/AbstractItem;, "Lcom/mikepenz/fastadapter/items/AbstractItem<TItem;TVH;>;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/items/AbstractItem;->getIdentifier()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 88
    .local p0, "this":Lcom/mikepenz/fastadapter/items/AbstractItem;, "Lcom/mikepenz/fastadapter/items/AbstractItem<TItem;TVH;>;"
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mEnabled:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 134
    .local p0, "this":Lcom/mikepenz/fastadapter/items/AbstractItem;, "Lcom/mikepenz/fastadapter/items/AbstractItem<TItem;TVH;>;"
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mSelectable:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 111
    .local p0, "this":Lcom/mikepenz/fastadapter/items/AbstractItem;, "Lcom/mikepenz/fastadapter/items/AbstractItem<TItem;TVH;>;"
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mSelected:Z

    return v0
.end method

.method public unbindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, "this":Lcom/mikepenz/fastadapter/items/AbstractItem;, "Lcom/mikepenz/fastadapter/items/AbstractItem<TItem;TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public withEnabled(Z)Lcom/mikepenz/fastadapter/IItem;
    .locals 0
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TItem;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/mikepenz/fastadapter/items/AbstractItem;, "Lcom/mikepenz/fastadapter/items/AbstractItem<TItem;TVH;>;"
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mEnabled:Z

    .line 80
    return-object p0
.end method

.method public bridge synthetic withEnabled(Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    .local p0, "this":Lcom/mikepenz/fastadapter/items/AbstractItem;, "Lcom/mikepenz/fastadapter/items/AbstractItem<TItem;TVH;>;"
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/items/AbstractItem;->withEnabled(Z)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    return-object v0
.end method

.method public withIdentifier(J)Lcom/mikepenz/fastadapter/IItem;
    .locals 1
    .param p1, "identifier"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TItem;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/mikepenz/fastadapter/items/AbstractItem;, "Lcom/mikepenz/fastadapter/items/AbstractItem<TItem;TVH;>;"
    iput-wide p1, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mIdentifier:J

    .line 36
    return-object p0
.end method

.method public bridge synthetic withIdentifier(J)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    .local p0, "this":Lcom/mikepenz/fastadapter/items/AbstractItem;, "Lcom/mikepenz/fastadapter/items/AbstractItem<TItem;TVH;>;"
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/items/AbstractItem;->withIdentifier(J)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    return-object v0
.end method

.method public withOnItemClickListener(Lcom/mikepenz/fastadapter/listeners/OnClickListener;)Lcom/mikepenz/fastadapter/IItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/listeners/OnClickListener",
            "<TItem;>;)TItem;"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lcom/mikepenz/fastadapter/items/AbstractItem;, "Lcom/mikepenz/fastadapter/items/AbstractItem<TItem;TVH;>;"
    .local p1, "onItemClickListener":Lcom/mikepenz/fastadapter/listeners/OnClickListener;, "Lcom/mikepenz/fastadapter/listeners/OnClickListener<TItem;>;"
    iput-object p1, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mOnItemClickListener:Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    .line 173
    return-object p0
.end method

.method public withOnItemPreClickListener(Lcom/mikepenz/fastadapter/listeners/OnClickListener;)Lcom/mikepenz/fastadapter/IItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/listeners/OnClickListener",
            "<TItem;>;)TItem;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lcom/mikepenz/fastadapter/items/AbstractItem;, "Lcom/mikepenz/fastadapter/items/AbstractItem<TItem;TVH;>;"
    .local p1, "onItemPreClickListener":Lcom/mikepenz/fastadapter/listeners/OnClickListener;, "Lcom/mikepenz/fastadapter/listeners/OnClickListener<TItem;>;"
    iput-object p1, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mOnItemPreClickListener:Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    .line 150
    return-object p0
.end method

.method public withSelectable(Z)Lcom/mikepenz/fastadapter/IItem;
    .locals 0
    .param p1, "selectable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TItem;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lcom/mikepenz/fastadapter/items/AbstractItem;, "Lcom/mikepenz/fastadapter/items/AbstractItem<TItem;TVH;>;"
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mSelectable:Z

    .line 126
    return-object p0
.end method

.method public bridge synthetic withSelectable(Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    .local p0, "this":Lcom/mikepenz/fastadapter/items/AbstractItem;, "Lcom/mikepenz/fastadapter/items/AbstractItem<TItem;TVH;>;"
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/items/AbstractItem;->withSelectable(Z)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    return-object v0
.end method

.method public withSetSelected(Z)Lcom/mikepenz/fastadapter/IItem;
    .locals 0
    .param p1, "selected"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TItem;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lcom/mikepenz/fastadapter/items/AbstractItem;, "Lcom/mikepenz/fastadapter/items/AbstractItem<TItem;TVH;>;"
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mSelected:Z

    .line 103
    return-object p0
.end method

.method public bridge synthetic withSetSelected(Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    .local p0, "this":Lcom/mikepenz/fastadapter/items/AbstractItem;, "Lcom/mikepenz/fastadapter/items/AbstractItem<TItem;TVH;>;"
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/items/AbstractItem;->withSetSelected(Z)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    return-object v0
.end method

.method public withTag(Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItem;
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TItem;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/mikepenz/fastadapter/items/AbstractItem;, "Lcom/mikepenz/fastadapter/items/AbstractItem<TItem;TVH;>;"
    iput-object p1, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->mTag:Ljava/lang/Object;

    .line 58
    return-object p0
.end method

.method public bridge synthetic withTag(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    .local p0, "this":Lcom/mikepenz/fastadapter/items/AbstractItem;, "Lcom/mikepenz/fastadapter/items/AbstractItem<TItem;TVH;>;"
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/items/AbstractItem;->withTag(Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    return-object v0
.end method
