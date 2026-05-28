.class public Lcom/mikepenz/fastadapter/FastAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "FastAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/fastadapter/FastAdapter$ViewHolder;,
        Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FastAdapter"


# instance fields
.field private eventHooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mikepenz/fastadapter/listeners/EventHook",
            "<TItem;>;>;"
        }
    .end annotation
.end field

.field private fastAdapterViewClickListener:Lcom/mikepenz/fastadapter/listeners/ClickEventHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/listeners/ClickEventHook",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private fastAdapterViewLongClickListener:Lcom/mikepenz/fastadapter/listeners/LongClickEventHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/listeners/LongClickEventHook",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private fastAdapterViewTouchListener:Lcom/mikepenz/fastadapter/listeners/TouchEventHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/listeners/TouchEventHook",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private final mAdapterSizes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mikepenz/fastadapter/IAdapter",
            "<TItem;>;>;"
        }
    .end annotation
.end field

.field private final mAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mikepenz/fastadapter/IAdapter",
            "<TItem;>;>;"
        }
    .end annotation
.end field

.field private mAttachDefaultListeners:Z

.field private final mExtensions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/mikepenz/fastadapter/IAdapterExtension",
            "<TItem;>;>;"
        }
    .end annotation
.end field

.field private mGlobalSize:I

.field private mLegacyBindViewMode:Z

.field private mOnBindViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;

.field private mOnClickListener:Lcom/mikepenz/fastadapter/listeners/OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/listeners/OnClickListener",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private mOnCreateViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;

.field private mOnLongClickListener:Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/listeners/OnLongClickListener",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private mOnPreClickListener:Lcom/mikepenz/fastadapter/listeners/OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/listeners/OnClickListener",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private mOnPreLongClickListener:Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/listeners/OnLongClickListener",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private mOnTouchListener:Lcom/mikepenz/fastadapter/listeners/OnTouchListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/listeners/OnTouchListener",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/select/SelectExtension",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private mTypeInstanceCache:Lcom/mikepenz/fastadapter/ITypeInstanceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/ITypeInstanceCache",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private mVerbose:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Landroid/util/SparseArray;

    .line 54
    iput v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mGlobalSize:I

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExtensions:Ljava/util/Set;

    .line 62
    new-instance v0, Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-direct {v0}, Lcom/mikepenz/fastadapter/select/SelectExtension;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    .line 64
    iput-boolean v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mLegacyBindViewMode:Z

    .line 66
    iput-boolean v2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAttachDefaultListeners:Z

    .line 69
    iput-boolean v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mVerbose:Z

    .line 79
    new-instance v0, Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListenerImpl;

    invoke-direct {v0}, Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListenerImpl;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnCreateViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;

    .line 80
    new-instance v0, Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListenerImpl;

    invoke-direct {v0}, Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListenerImpl;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnBindViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;

    .line 548
    new-instance v0, Lcom/mikepenz/fastadapter/FastAdapter$1;

    invoke-direct {v0, p0}, Lcom/mikepenz/fastadapter/FastAdapter$1;-><init>(Lcom/mikepenz/fastadapter/FastAdapter;)V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->fastAdapterViewClickListener:Lcom/mikepenz/fastadapter/listeners/ClickEventHook;

    .line 589
    new-instance v0, Lcom/mikepenz/fastadapter/FastAdapter$2;

    invoke-direct {v0, p0}, Lcom/mikepenz/fastadapter/FastAdapter$2;-><init>(Lcom/mikepenz/fastadapter/FastAdapter;)V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->fastAdapterViewLongClickListener:Lcom/mikepenz/fastadapter/listeners/LongClickEventHook;

    .line 621
    new-instance v0, Lcom/mikepenz/fastadapter/FastAdapter$3;

    invoke-direct {v0, p0}, Lcom/mikepenz/fastadapter/FastAdapter$3;-><init>(Lcom/mikepenz/fastadapter/FastAdapter;)V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->fastAdapterViewTouchListener:Lcom/mikepenz/fastadapter/listeners/TouchEventHook;

    .line 94
    invoke-virtual {p0, v2}, Lcom/mikepenz/fastadapter/FastAdapter;->setHasStableIds(Z)V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/listeners/OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/mikepenz/fastadapter/FastAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnPreClickListener:Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mikepenz/fastadapter/FastAdapter;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/mikepenz/fastadapter/FastAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExtensions:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/listeners/OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/mikepenz/fastadapter/FastAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnClickListener:Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/mikepenz/fastadapter/FastAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnPreLongClickListener:Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/mikepenz/fastadapter/FastAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnLongClickListener:Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/listeners/OnTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/mikepenz/fastadapter/FastAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnTouchListener:Lcom/mikepenz/fastadapter/listeners/OnTouchListener;

    return-object v0
.end method

.method private static floorIndex(Landroid/util/SparseArray;I)I
    .locals 2
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<*>;I)I"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "sparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<*>;"
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 84
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 85
    xor-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v1, -0x1

    .line 87
    :cond_0
    return v0
.end method

.method public static getHolderAdapterItem(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/mikepenz/fastadapter/IItem;
    .locals 5
    .param p0, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")TItem;"
        }
    .end annotation

    .prologue
    .line 1294
    if-eqz p0, :cond_0

    .line 1295
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v4, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item_adapter:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 1296
    .local v2, "tag":Ljava/lang/Object;
    instance-of v3, v2, Lcom/mikepenz/fastadapter/FastAdapter;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 1297
    check-cast v0, Lcom/mikepenz/fastadapter/FastAdapter;

    .line 1298
    .local v0, "fastAdapter":Lcom/mikepenz/fastadapter/FastAdapter;
    invoke-virtual {v0, p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getHolderAdapterPosition(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v1

    .line 1299
    .local v1, "pos":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 1300
    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v3

    .line 1304
    .end local v0    # "fastAdapter":Lcom/mikepenz/fastadapter/FastAdapter;
    .end local v1    # "pos":I
    .end local v2    # "tag":Ljava/lang/Object;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getHolderAdapterItem(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Lcom/mikepenz/fastadapter/IItem;
    .locals 3
    .param p0, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "I)TItem;"
        }
    .end annotation

    .prologue
    .line 1315
    if-eqz p0, :cond_0

    .line 1316
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item_adapter:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 1317
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Lcom/mikepenz/fastadapter/FastAdapter;

    if-eqz v1, :cond_0

    .line 1318
    check-cast v0, Lcom/mikepenz/fastadapter/FastAdapter;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v1

    .line 1321
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static with(Lcom/mikepenz/fastadapter/IAdapter;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            "A::",
            "Lcom/mikepenz/fastadapter/IAdapter;",
            ">(TA;)",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "adapter":Lcom/mikepenz/fastadapter/IAdapter;, "TA;"
    new-instance v0, Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-direct {v0}, Lcom/mikepenz/fastadapter/FastAdapter;-><init>()V

    .line 137
    .local v0, "fastAdapter":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/mikepenz/fastadapter/FastAdapter;->addAdapter(ILcom/mikepenz/fastadapter/IAdapter;)Lcom/mikepenz/fastadapter/FastAdapter;

    .line 138
    return-object v0
.end method

.method public static with(Ljava/util/Collection;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            "A::",
            "Lcom/mikepenz/fastadapter/IAdapter;",
            ">(",
            "Ljava/util/Collection",
            "<TA;>;)",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "adapters":Ljava/util/Collection;, "Ljava/util/Collection<TA;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->with(Ljava/util/Collection;Ljava/util/Collection;)Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static with(Ljava/util/Collection;Ljava/util/Collection;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 6
    .param p0    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            "A::",
            "Lcom/mikepenz/fastadapter/IAdapter;",
            ">(",
            "Ljava/util/Collection",
            "<TA;>;",
            "Ljava/util/Collection",
            "<",
            "Lcom/mikepenz/fastadapter/IAdapterExtension",
            "<TItem;>;>;)",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "adapters":Ljava/util/Collection;, "Ljava/util/Collection<TA;>;"
    .local p1, "extensions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mikepenz/fastadapter/IAdapterExtension<TItem;>;>;"
    new-instance v2, Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-direct {v2}, Lcom/mikepenz/fastadapter/FastAdapter;-><init>()V

    .line 161
    .local v2, "fastAdapter":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    if-nez p0, :cond_1

    .line 162
    iget-object v4, v2, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-static {}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->items()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, v2, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 169
    iget-object v4, v2, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mikepenz/fastadapter/IAdapter;

    invoke-interface {v4, v2}, Lcom/mikepenz/fastadapter/IAdapter;->withFastAdapter(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/IAdapter;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/mikepenz/fastadapter/IAdapter;->setOrder(I)V

    .line 168
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    .end local v3    # "i":I
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IAdapter;

    .line 165
    .local v0, "adapter":Lcom/mikepenz/fastadapter/IAdapter;, "TA;"
    iget-object v5, v2, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 171
    .end local v0    # "adapter":Lcom/mikepenz/fastadapter/IAdapter;, "TA;"
    .restart local v3    # "i":I
    :cond_2
    invoke-virtual {v2}, Lcom/mikepenz/fastadapter/FastAdapter;->cacheSizes()V

    .line 173
    if-eqz p1, :cond_3

    .line 174
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IAdapterExtension;

    .line 175
    .local v1, "extension":Lcom/mikepenz/fastadapter/IAdapterExtension;, "Lcom/mikepenz/fastadapter/IAdapterExtension<TItem;>;"
    invoke-virtual {v2, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->addExtension(Lcom/mikepenz/fastadapter/IAdapterExtension;)Lcom/mikepenz/fastadapter/FastAdapter;

    goto :goto_2

    .line 179
    .end local v1    # "extension":Lcom/mikepenz/fastadapter/IAdapterExtension;, "Lcom/mikepenz/fastadapter/IAdapterExtension<TItem;>;"
    :cond_3
    return-object v2
.end method


# virtual methods
.method public adapter(I)Lcom/mikepenz/fastadapter/IAdapter;
    .locals 1
    .param p1, "order"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mikepenz/fastadapter/IAdapter",
            "<TItem;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 207
    const/4 v0, 0x0

    .line 209
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IAdapter;

    goto :goto_0
.end method

.method public addAdapter(ILcom/mikepenz/fastadapter/IAdapter;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/mikepenz/fastadapter/IAdapter",
            "<TItem;>;>(ITA;)",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    .local p2, "adapter":Lcom/mikepenz/fastadapter/IAdapter;, "TA;"
    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 191
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IAdapter;

    invoke-interface {v1, p0}, Lcom/mikepenz/fastadapter/IAdapter;->withFastAdapter(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/IAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mikepenz/fastadapter/IAdapter;->setOrder(I)V

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->cacheSizes()V

    .line 195
    return-object p0
.end method

.method public addExtension(Lcom/mikepenz/fastadapter/IAdapterExtension;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/mikepenz/fastadapter/IAdapterExtension",
            "<TItem;>;>(TE;)",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    .local p1, "extension":Lcom/mikepenz/fastadapter/IAdapterExtension;, "TE;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExtensions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-interface {p1, p0}, Lcom/mikepenz/fastadapter/IAdapterExtension;->init(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/IAdapterExtension;

    .line 219
    return-object p0
.end method

.method protected cacheSizes()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    const/4 v4, 0x0

    .line 973
    iget-object v2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 974
    const/4 v1, 0x0

    .line 976
    .local v1, "size":I
    iget-object v2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IAdapter;

    .line 977
    .local v0, "adapter":Lcom/mikepenz/fastadapter/IAdapter;, "Lcom/mikepenz/fastadapter/IAdapter<TItem;>;"
    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IAdapter;->getAdapterItemCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 978
    iget-object v3, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 979
    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IAdapter;->getAdapterItemCount()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 984
    .end local v0    # "adapter":Lcom/mikepenz/fastadapter/IAdapter;, "Lcom/mikepenz/fastadapter/IAdapter<TItem;>;"
    :cond_1
    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 985
    iget-object v2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 988
    :cond_2
    iput v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mGlobalSize:I

    .line 989
    return-void
.end method

.method public clearTypeInstance()V
    .locals 1

    .prologue
    .line 531
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getTypeInstanceCache()Lcom/mikepenz/fastadapter/ITypeInstanceCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/ITypeInstanceCache;->clear()V

    .line 532
    return-void
.end method

.method public deleteAllSelectedItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 1155
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deleteAllSelectedItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public deselect()V
    .locals 1

    .prologue
    .line 1101
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselect()V

    .line 1102
    return-void
.end method

.method public deselect(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1135
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselect(ILjava/util/Iterator;)V

    .line 1136
    return-void
.end method

.method public deselect(ILjava/util/Iterator;)V
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1146
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    .local p2, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0, p1, p2}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselect(ILjava/util/Iterator;)V

    .line 1147
    return-void
.end method

.method public deselect(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1126
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    .local p1, "positions":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselect(Ljava/lang/Iterable;)V

    .line 1127
    return-void
.end method

.method public enableVerboseLog()Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mVerbose:Z

    .line 104
    return-object p0
.end method

.method public getAdapter(I)Lcom/mikepenz/fastadapter/IAdapter;
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mikepenz/fastadapter/IAdapter",
            "<TItem;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 860
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mGlobalSize:I

    if-lt p1, v0, :cond_1

    .line 861
    :cond_0
    const/4 v0, 0x0

    .line 865
    :goto_0
    return-object v0

    .line 863
    :cond_1
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mVerbose:Z

    if-eqz v0, :cond_2

    const-string v0, "FastAdapter"

    const-string v1, "getAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_2
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Landroid/util/SparseArray;

    invoke-static {v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->floorIndex(Landroid/util/SparseArray;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IAdapter;

    goto :goto_0
.end method

.method public getEventHooks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mikepenz/fastadapter/listeners/EventHook",
            "<TItem;>;>;"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->eventHooks:Ljava/util/List;

    return-object v0
.end method

.method public getExtensions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/mikepenz/fastadapter/IAdapterExtension",
            "<TItem;>;>;"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExtensions:Ljava/util/Set;

    return-object v0
.end method

.method public getHolderAdapterPosition(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 542
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/mikepenz/fastadapter/IItem;
    .locals 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .prologue
    .line 821
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mGlobalSize:I

    if-lt p1, v1, :cond_1

    .line 822
    :cond_0
    const/4 v1, 0x0

    .line 826
    :goto_0
    return-object v1

    .line 825
    :cond_1
    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Landroid/util/SparseArray;

    invoke-static {v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->floorIndex(Landroid/util/SparseArray;I)I

    move-result v0

    .line 826
    .local v0, "index":I
    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IAdapter;

    iget-object v2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    sub-int v2, p1, v2

    invoke-interface {v1, v2}, Lcom/mikepenz/fastadapter/IAdapter;->getAdapterItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 896
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mGlobalSize:I

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 887
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 876
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IItem;->getType()I

    move-result v0

    return v0
.end method

.method public getOnClickListener()Lcom/mikepenz/fastadapter/listeners/OnClickListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/listeners/OnClickListener",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnClickListener:Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    return-object v0
.end method

.method public getPosition(J)I
    .locals 7
    .param p1, "identifier"    # J

    .prologue
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    const/4 v3, -0x1

    .line 797
    const/4 v1, 0x0

    .line 798
    .local v1, "position":I
    iget-object v4, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IAdapter;

    .line 799
    .local v0, "adapter":Lcom/mikepenz/fastadapter/IAdapter;, "Lcom/mikepenz/fastadapter/IAdapter<TItem;>;"
    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IAdapter;->getOrder()I

    move-result v5

    if-ltz v5, :cond_0

    .line 803
    invoke-interface {v0, p1, p2}, Lcom/mikepenz/fastadapter/IAdapter;->getAdapterPosition(J)I

    move-result v2

    .line 804
    .local v2, "relativePosition":I
    if-eq v2, v3, :cond_2

    .line 805
    add-int v3, v1, v2

    .line 810
    .end local v0    # "adapter":Lcom/mikepenz/fastadapter/IAdapter;, "Lcom/mikepenz/fastadapter/IAdapter<TItem;>;"
    .end local v2    # "relativePosition":I
    :cond_1
    return v3

    .line 807
    .restart local v0    # "adapter":Lcom/mikepenz/fastadapter/IAdapter;, "Lcom/mikepenz/fastadapter/IAdapter<TItem;>;"
    .restart local v2    # "relativePosition":I
    :cond_2
    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IAdapter;->getAdapterItemCount()I

    move-result v1

    .line 808
    goto :goto_0
.end method

.method public getPosition(Lcom/mikepenz/fastadapter/IItem;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)I"
        }
    .end annotation

    .prologue
    .line 783
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    .local p1, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 784
    const-string v0, "FastAdapter"

    const-string v1, "You have to define an identifier for your item to retrieve the position via this method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const/4 v0, -0x1

    .line 787
    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPosition(J)I

    move-result v0

    goto :goto_0
.end method

.method public getPreItemCount(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 931
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mGlobalSize:I

    if-nez v0, :cond_0

    .line 932
    const/4 v0, 0x0

    .line 936
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Landroid/util/SparseArray;

    invoke-static {v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->floorIndex(Landroid/util/SparseArray;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    goto :goto_0
.end method

.method public getPreItemCountByOrder(I)I
    .locals 3
    .param p1, "order"    # I

    .prologue
    .line 907
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget v2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mGlobalSize:I

    if-nez v2, :cond_1

    .line 908
    const/4 v1, 0x0

    .line 919
    :cond_0
    return v1

    .line 911
    :cond_1
    const/4 v1, 0x0

    .line 914
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 915
    iget-object v2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IAdapter;

    invoke-interface {v2}, Lcom/mikepenz/fastadapter/IAdapter;->getAdapterItemCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 914
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRelativeInfo(I)Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;
    .locals 4
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 837
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    if-gez p1, :cond_1

    .line 838
    new-instance v1, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;

    invoke-direct {v1}, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;-><init>()V

    .line 848
    :cond_0
    :goto_0
    return-object v1

    .line 841
    :cond_1
    new-instance v1, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;

    invoke-direct {v1}, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;-><init>()V

    .line 842
    .local v1, "relativeInfo":Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;, "Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo<TItem;>;"
    iget-object v2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Landroid/util/SparseArray;

    invoke-static {v2, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->floorIndex(Landroid/util/SparseArray;I)I

    move-result v0

    .line 843
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 844
    iget-object v2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IAdapter;

    iget-object v3, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    sub-int v3, p1, v3

    invoke-interface {v2, v3}, Lcom/mikepenz/fastadapter/IAdapter;->getAdapterItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v2

    iput-object v2, v1, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->item:Lcom/mikepenz/fastadapter/IItem;

    .line 845
    iget-object v2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IAdapter;

    iput-object v2, v1, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->adapter:Lcom/mikepenz/fastadapter/IAdapter;

    .line 846
    iput p1, v1, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->position:I

    goto :goto_0
.end method

.method public getSelectExtension()Lcom/mikepenz/fastadapter/select/SelectExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/select/SelectExtension",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 1031
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    return-object v0
.end method

.method public getSelectedItems()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 1046
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/select/SelectExtension;->getSelectedItems()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSelections()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1038
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/select/SelectExtension;->getSelections()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getTypeInstance(I)Lcom/mikepenz/fastadapter/IItem;
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .prologue
    .line 524
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getTypeInstanceCache()Lcom/mikepenz/fastadapter/ITypeInstanceCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mikepenz/fastadapter/ITypeInstanceCache;->get(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    return-object v0
.end method

.method public getTypeInstanceCache()Lcom/mikepenz/fastadapter/ITypeInstanceCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/ITypeInstanceCache",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mTypeInstanceCache:Lcom/mikepenz/fastadapter/ITypeInstanceCache;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/mikepenz/fastadapter/utils/DefaultTypeInstanceCache;

    invoke-direct {v0}, Lcom/mikepenz/fastadapter/utils/DefaultTypeInstanceCache;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mTypeInstanceCache:Lcom/mikepenz/fastadapter/ITypeInstanceCache;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mTypeInstanceCache:Lcom/mikepenz/fastadapter/ITypeInstanceCache;

    return-object v0
.end method

.method public getViewClickListener()Lcom/mikepenz/fastadapter/listeners/ClickEventHook;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/listeners/ClickEventHook",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 1002
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->fastAdapterViewClickListener:Lcom/mikepenz/fastadapter/listeners/ClickEventHook;

    return-object v0
.end method

.method public getViewLongClickListener()Lcom/mikepenz/fastadapter/listeners/LongClickEventHook;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/listeners/LongClickEventHook",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 1010
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->fastAdapterViewLongClickListener:Lcom/mikepenz/fastadapter/listeners/LongClickEventHook;

    return-object v0
.end method

.method public getViewTouchListener()Lcom/mikepenz/fastadapter/listeners/TouchEventHook;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/listeners/TouchEventHook",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 1018
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->fastAdapterViewTouchListener:Lcom/mikepenz/fastadapter/listeners/TouchEventHook;

    return-object v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 469
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/select/SelectExtension;->isSelectable()Z

    move-result v0

    return v0
.end method

.method public notifyAdapterDataSetChanged()V
    .locals 3

    .prologue
    .line 1169
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExtensions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IAdapterExtension;

    .line 1170
    .local v0, "ext":Lcom/mikepenz/fastadapter/IAdapterExtension;, "Lcom/mikepenz/fastadapter/IAdapterExtension<TItem;>;"
    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IAdapterExtension;->notifyAdapterDataSetChanged()V

    goto :goto_0

    .line 1172
    .end local v0    # "ext":Lcom/mikepenz/fastadapter/IAdapterExtension;, "Lcom/mikepenz/fastadapter/IAdapterExtension<TItem;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->cacheSizes()V

    .line 1173
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyDataSetChanged()V

    .line 1174
    return-void
.end method

.method public notifyAdapterItemChanged(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1245
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemChanged(ILjava/lang/Object;)V

    .line 1246
    return-void
.end method

.method public notifyAdapterItemChanged(ILjava/lang/Object;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "payload"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1255
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeChanged(IILjava/lang/Object;)V

    .line 1256
    return-void
.end method

.method public notifyAdapterItemInserted(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1182
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeInserted(II)V

    .line 1183
    return-void
.end method

.method public notifyAdapterItemMoved(II)V
    .locals 3
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 1233
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExtensions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IAdapterExtension;

    .line 1234
    .local v0, "ext":Lcom/mikepenz/fastadapter/IAdapterExtension;, "Lcom/mikepenz/fastadapter/IAdapterExtension<TItem;>;"
    invoke-interface {v0, p1, p2}, Lcom/mikepenz/fastadapter/IAdapterExtension;->notifyAdapterItemMoved(II)V

    goto :goto_0

    .line 1236
    .end local v0    # "ext":Lcom/mikepenz/fastadapter/IAdapterExtension;, "Lcom/mikepenz/fastadapter/IAdapterExtension<TItem;>;"
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyItemMoved(II)V

    .line 1237
    return-void
.end method

.method public notifyAdapterItemRangeChanged(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 1265
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeChanged(IILjava/lang/Object;)V

    .line 1266
    return-void
.end method

.method public notifyAdapterItemRangeChanged(IILjava/lang/Object;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1277
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExtensions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IAdapterExtension;

    .line 1278
    .local v0, "ext":Lcom/mikepenz/fastadapter/IAdapterExtension;, "Lcom/mikepenz/fastadapter/IAdapterExtension<TItem;>;"
    invoke-interface {v0, p1, p2, p3}, Lcom/mikepenz/fastadapter/IAdapterExtension;->notifyAdapterItemRangeChanged(IILjava/lang/Object;)V

    goto :goto_0

    .line 1280
    .end local v0    # "ext":Lcom/mikepenz/fastadapter/IAdapterExtension;, "Lcom/mikepenz/fastadapter/IAdapterExtension<TItem;>;"
    :cond_0
    if-nez p3, :cond_1

    .line 1281
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyItemRangeChanged(II)V

    .line 1285
    :goto_1
    return-void

    .line 1283
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    goto :goto_1
.end method

.method public notifyAdapterItemRangeInserted(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 1193
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExtensions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IAdapterExtension;

    .line 1194
    .local v0, "ext":Lcom/mikepenz/fastadapter/IAdapterExtension;, "Lcom/mikepenz/fastadapter/IAdapterExtension<TItem;>;"
    invoke-interface {v0, p1, p2}, Lcom/mikepenz/fastadapter/IAdapterExtension;->notifyAdapterItemRangeInserted(II)V

    goto :goto_0

    .line 1196
    .end local v0    # "ext":Lcom/mikepenz/fastadapter/IAdapterExtension;, "Lcom/mikepenz/fastadapter/IAdapterExtension<TItem;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->cacheSizes()V

    .line 1197
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyItemRangeInserted(II)V

    .line 1198
    return-void
.end method

.method public notifyAdapterItemRangeRemoved(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 1217
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExtensions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IAdapterExtension;

    .line 1218
    .local v0, "ext":Lcom/mikepenz/fastadapter/IAdapterExtension;, "Lcom/mikepenz/fastadapter/IAdapterExtension<TItem;>;"
    invoke-interface {v0, p1, p2}, Lcom/mikepenz/fastadapter/IAdapterExtension;->notifyAdapterItemRangeRemoved(II)V

    goto :goto_0

    .line 1221
    .end local v0    # "ext":Lcom/mikepenz/fastadapter/IAdapterExtension;, "Lcom/mikepenz/fastadapter/IAdapterExtension<TItem;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->cacheSizes()V

    .line 1222
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyItemRangeRemoved(II)V

    .line 1223
    return-void
.end method

.method public notifyAdapterItemRemoved(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1206
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeRemoved(II)V

    .line 1207
    return-void
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 766
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "FastAdapter"

    const-string v1, "onAttachedToRecyclerView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 768
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 683
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mLegacyBindViewMode:Z

    if-eqz v0, :cond_1

    .line 684
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mVerbose:Z

    if-eqz v0, :cond_0

    .line 685
    const-string v0, "FastAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewHolderLegacy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isLegacy: true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item_adapter:I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 690
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnBindViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0, p1, p2, v1}, Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 692
    :cond_1
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 704
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    .local p3, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mLegacyBindViewMode:Z

    if-nez v0, :cond_1

    .line 705
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mVerbose:Z

    if-eqz v0, :cond_0

    .line 706
    const-string v0, "FastAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewHolder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isLegacy: false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item_adapter:I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 710
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnBindViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 712
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 713
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 652
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-boolean v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "FastAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateViewHolder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_0
    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnCreateViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;

    invoke-interface {v1, p0, p1, p2}, Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;->onPreCreateViewHolder(Lcom/mikepenz/fastadapter/FastAdapter;Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 657
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item_adapter:I

    invoke-virtual {v1, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 659
    iget-boolean v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAttachDefaultListeners:Z

    if-eqz v1, :cond_1

    .line 661
    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->fastAdapterViewClickListener:Lcom/mikepenz/fastadapter/listeners/ClickEventHook;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v0, v2}, Lcom/mikepenz/fastadapter/utils/EventHookUtil;->attachToView(Lcom/mikepenz/fastadapter/listeners/EventHook;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    .line 664
    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->fastAdapterViewLongClickListener:Lcom/mikepenz/fastadapter/listeners/LongClickEventHook;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v0, v2}, Lcom/mikepenz/fastadapter/utils/EventHookUtil;->attachToView(Lcom/mikepenz/fastadapter/listeners/EventHook;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    .line 667
    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->fastAdapterViewTouchListener:Lcom/mikepenz/fastadapter/listeners/TouchEventHook;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v0, v2}, Lcom/mikepenz/fastadapter/utils/EventHookUtil;->attachToView(Lcom/mikepenz/fastadapter/listeners/EventHook;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    .line 670
    :cond_1
    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnCreateViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;

    invoke-interface {v1, p0, v0}, Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;->onPostCreateViewHolder(Lcom/mikepenz/fastadapter/FastAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    return-object v1
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 772
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "FastAdapter"

    const-string v1, "onDetachedFromRecyclerView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 774
    return-void
.end method

.method public onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 760
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "FastAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailedToRecycleView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnBindViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 746
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "FastAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewAttachedToWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 748
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnBindViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 749
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 734
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "FastAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewDetachedFromWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 736
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnBindViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 737
    return-void
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 722
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "FastAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewRecycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 724
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnBindViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;->unBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 725
    return-void
.end method

.method public registerTypeInstance(Lcom/mikepenz/fastadapter/IItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    .prologue
    .line 509
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    .local p1, "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getTypeInstanceCache()Lcom/mikepenz/fastadapter/ITypeInstanceCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mikepenz/fastadapter/ITypeInstanceCache;->register(Lcom/mikepenz/fastadapter/IItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    instance-of v0, p1, Lcom/mikepenz/fastadapter/IHookable;

    if-eqz v0, :cond_0

    .line 512
    check-cast p1, Lcom/mikepenz/fastadapter/IHookable;

    .end local p1    # "item":Lcom/mikepenz/fastadapter/IItem;, "TItem;"
    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IHookable;->getEventHooks()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->withEventHooks(Ljava/util/Collection;)Lcom/mikepenz/fastadapter/FastAdapter;

    .line 515
    :cond_0
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 949
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->saveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public saveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 963
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExtensions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IAdapterExtension;

    .line 964
    .local v0, "ext":Lcom/mikepenz/fastadapter/IAdapterExtension;, "Lcom/mikepenz/fastadapter/IAdapterExtension<TItem;>;"
    invoke-interface {v0, p1, p2}, Lcom/mikepenz/fastadapter/IAdapterExtension;->saveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 966
    .end local v0    # "ext":Lcom/mikepenz/fastadapter/IAdapterExtension;, "Lcom/mikepenz/fastadapter/IAdapterExtension<TItem;>;"
    :cond_0
    return-object p1
.end method

.method public select()V
    .locals 2

    .prologue
    .line 1108
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select(Z)V

    .line 1109
    return-void
.end method

.method public select(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    const/4 v1, 0x0

    .line 1073
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0, p1, v1, v1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select(IZZ)V

    .line 1074
    return-void
.end method

.method public select(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "fireEvent"    # Z

    .prologue
    .line 1083
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select(IZZ)V

    .line 1084
    return-void
.end method

.method public select(IZZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "fireEvent"    # Z
    .param p3, "considerSelectableFlag"    # Z

    .prologue
    .line 1094
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select(IZZ)V

    .line 1095
    return-void
.end method

.method public select(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1064
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    .local p1, "positions":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select(Ljava/lang/Iterable;)V

    .line 1065
    return-void
.end method

.method public select(Z)V
    .locals 1
    .param p1, "considerSelectableFlag"    # Z

    .prologue
    .line 1117
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select(Z)V

    .line 1118
    return-void
.end method

.method public setTypeInstanceCache(Lcom/mikepenz/fastadapter/ITypeInstanceCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/ITypeInstanceCache",
            "<TItem;>;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    .local p1, "mTypeInstanceCache":Lcom/mikepenz/fastadapter/ITypeInstanceCache;, "Lcom/mikepenz/fastadapter/ITypeInstanceCache<TItem;>;"
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mTypeInstanceCache:Lcom/mikepenz/fastadapter/ITypeInstanceCache;

    .line 116
    return-void
.end method

.method public toggleSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1055
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->toggleSelection(I)V

    .line 1056
    return-void
.end method

.method public withAllowDeselection(Z)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .param p1, "allowDeselection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->withAllowDeselection(Z)Lcom/mikepenz/fastadapter/select/SelectExtension;

    .line 410
    return-object p0
.end method

.method public withAttachDefaultListeners(Z)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 0
    .param p1, "mAttachDefaultListeners"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 450
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAttachDefaultListeners:Z

    .line 451
    return-object p0
.end method

.method public withEventHook(Lcom/mikepenz/fastadapter/listeners/EventHook;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/listeners/EventHook",
            "<TItem;>;)",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    .local p1, "eventHook":Lcom/mikepenz/fastadapter/listeners/EventHook;, "Lcom/mikepenz/fastadapter/listeners/EventHook<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->eventHooks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->eventHooks:Ljava/util/List;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->eventHooks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    return-object p0
.end method

.method public withEventHooks(Ljava/util/Collection;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/mikepenz/fastadapter/listeners/EventHook",
            "<TItem;>;>;)",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    .local p1, "eventHooks":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/mikepenz/fastadapter/listeners/EventHook<TItem;>;>;"
    if-nez p1, :cond_0

    .line 279
    :goto_0
    return-object p0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->eventHooks:Ljava/util/List;

    if-nez v0, :cond_1

    .line 276
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->eventHooks:Ljava/util/List;

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->eventHooks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public withItemEvent(Lcom/mikepenz/fastadapter/listeners/EventHook;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/listeners/EventHook",
            "<TItem;>;)",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    .local p1, "eventHook":Lcom/mikepenz/fastadapter/listeners/EventHook;, "Lcom/mikepenz/fastadapter/listeners/EventHook<TItem;>;"
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->withEventHook(Lcom/mikepenz/fastadapter/listeners/EventHook;)Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    return-object v0
.end method

.method public withLegacyBindViewMode(Z)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 0
    .param p1, "legacyBindViewMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 437
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mLegacyBindViewMode:Z

    .line 438
    return-object p0
.end method

.method public withMultiSelect(Z)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .param p1, "multiSelect"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 387
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->withMultiSelect(Z)Lcom/mikepenz/fastadapter/select/SelectExtension;

    .line 388
    return-object p0
.end method

.method public withOnBindViewHolderListener(Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 0
    .param p1, "onBindViewHolderListener"    # Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;",
            ")",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 362
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnBindViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;

    .line 363
    return-object p0
.end method

.method public withOnClickListener(Lcom/mikepenz/fastadapter/listeners/OnClickListener;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/listeners/OnClickListener",
            "<TItem;>;)",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    .local p1, "onClickListener":Lcom/mikepenz/fastadapter/listeners/OnClickListener;, "Lcom/mikepenz/fastadapter/listeners/OnClickListener<TItem;>;"
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnClickListener:Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    .line 290
    return-object p0
.end method

.method public withOnCreateViewHolderListener(Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 0
    .param p1, "onCreateViewHolderListener"    # Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;",
            ")",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnCreateViewHolderListener:Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;

    .line 352
    return-object p0
.end method

.method public withOnLongClickListener(Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/listeners/OnLongClickListener",
            "<TItem;>;)",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    .local p1, "onLongClickListener":Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;, "Lcom/mikepenz/fastadapter/listeners/OnLongClickListener<TItem;>;"
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnLongClickListener:Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;

    .line 319
    return-object p0
.end method

.method public withOnPreClickListener(Lcom/mikepenz/fastadapter/listeners/OnClickListener;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/listeners/OnClickListener",
            "<TItem;>;)",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    .local p1, "onPreClickListener":Lcom/mikepenz/fastadapter/listeners/OnClickListener;, "Lcom/mikepenz/fastadapter/listeners/OnClickListener<TItem;>;"
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnPreClickListener:Lcom/mikepenz/fastadapter/listeners/OnClickListener;

    .line 308
    return-object p0
.end method

.method public withOnPreLongClickListener(Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/listeners/OnLongClickListener",
            "<TItem;>;)",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 329
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    .local p1, "onPreLongClickListener":Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;, "Lcom/mikepenz/fastadapter/listeners/OnLongClickListener<TItem;>;"
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnPreLongClickListener:Lcom/mikepenz/fastadapter/listeners/OnLongClickListener;

    .line 330
    return-object p0
.end method

.method public withOnTouchListener(Lcom/mikepenz/fastadapter/listeners/OnTouchListener;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/listeners/OnTouchListener",
            "<TItem;>;)",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    .local p1, "onTouchListener":Lcom/mikepenz/fastadapter/listeners/OnTouchListener;, "Lcom/mikepenz/fastadapter/listeners/OnTouchListener<TItem;>;"
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnTouchListener:Lcom/mikepenz/fastadapter/listeners/OnTouchListener;

    .line 341
    return-object p0
.end method

.method public withSavedInstanceState(Landroid/os/Bundle;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 482
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->withSavedInstanceState(Landroid/os/Bundle;Ljava/lang/String;)Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    return-object v0
.end method

.method public withSavedInstanceState(Landroid/os/Bundle;Ljava/lang/String;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 496
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExtensions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IAdapterExtension;

    .line 497
    .local v0, "ext":Lcom/mikepenz/fastadapter/IAdapterExtension;, "Lcom/mikepenz/fastadapter/IAdapterExtension<TItem;>;"
    invoke-interface {v0, p1, p2}, Lcom/mikepenz/fastadapter/IAdapterExtension;->withSavedInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 500
    .end local v0    # "ext":Lcom/mikepenz/fastadapter/IAdapterExtension;, "Lcom/mikepenz/fastadapter/IAdapterExtension<TItem;>;"
    :cond_0
    return-object p0
.end method

.method public withSelectOnLongClick(Z)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .param p1, "selectOnLongClick"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->withSelectOnLongClick(Z)Lcom/mikepenz/fastadapter/select/SelectExtension;

    .line 399
    return-object p0
.end method

.method public withSelectWithItemUpdate(Z)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .param p1, "selectWithItemUpdate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->withSelectWithItemUpdate(Z)Lcom/mikepenz/fastadapter/select/SelectExtension;

    .line 377
    return-object p0
.end method

.method public withSelectable(Z)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 2
    .param p1, "selectable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 420
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    if-eqz p1, :cond_0

    .line 421
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->addExtension(Lcom/mikepenz/fastadapter/IAdapterExtension;)Lcom/mikepenz/fastadapter/FastAdapter;

    .line 426
    :goto_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->withSelectable(Z)Lcom/mikepenz/fastadapter/select/SelectExtension;

    .line 427
    return-object p0

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExtensions:Ljava/util/Set;

    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public withSelectionListener(Lcom/mikepenz/fastadapter/ISelectionListener;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/ISelectionListener",
            "<TItem;>;)",
            "Lcom/mikepenz/fastadapter/FastAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 461
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter;, "Lcom/mikepenz/fastadapter/FastAdapter<TItem;>;"
    .local p1, "selectionListener":Lcom/mikepenz/fastadapter/ISelectionListener;, "Lcom/mikepenz/fastadapter/ISelectionListener<TItem;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectExtension:Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->withSelectionListener(Lcom/mikepenz/fastadapter/ISelectionListener;)Lcom/mikepenz/fastadapter/select/SelectExtension;

    .line 462
    return-object p0
.end method
