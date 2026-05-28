.class public abstract Lcom/mikepenz/fastadapter/items/ModelAbstractItem;
.super Lcom/mikepenz/fastadapter/items/AbstractItem;
.source "ModelAbstractItem.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/IModelItem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Item:",
        "Lcom/mikepenz/fastadapter/items/ModelAbstractItem",
        "<***>;VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Lcom/mikepenz/fastadapter/items/AbstractItem",
        "<TItem;TVH;>;",
        "Lcom/mikepenz/fastadapter/IModelItem",
        "<TModel;TItem;TVH;>;"
    }
.end annotation


# instance fields
.field private mModel:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModel;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "this":Lcom/mikepenz/fastadapter/items/ModelAbstractItem;, "Lcom/mikepenz/fastadapter/items/ModelAbstractItem<TModel;TItem;TVH;>;"
    .local p1, "model":Ljava/lang/Object;, "TModel;"
    invoke-direct {p0}, Lcom/mikepenz/fastadapter/items/AbstractItem;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/mikepenz/fastadapter/items/ModelAbstractItem;->mModel:Ljava/lang/Object;

    .line 16
    return-void
.end method


# virtual methods
.method public getModel()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TModel;"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcom/mikepenz/fastadapter/items/ModelAbstractItem;, "Lcom/mikepenz/fastadapter/items/ModelAbstractItem<TModel;TItem;TVH;>;"
    iget-object v0, p0, Lcom/mikepenz/fastadapter/items/ModelAbstractItem;->mModel:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic withModel(Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IModelItem;
    .locals 1

    .prologue
    .line 11
    .local p0, "this":Lcom/mikepenz/fastadapter/items/ModelAbstractItem;, "Lcom/mikepenz/fastadapter/items/ModelAbstractItem<TModel;TItem;TVH;>;"
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/items/ModelAbstractItem;->withModel(Ljava/lang/Object;)Lcom/mikepenz/fastadapter/items/ModelAbstractItem;

    move-result-object v0

    return-object v0
.end method

.method public withModel(Ljava/lang/Object;)Lcom/mikepenz/fastadapter/items/ModelAbstractItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)",
            "Lcom/mikepenz/fastadapter/items/ModelAbstractItem",
            "<***>;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/mikepenz/fastadapter/items/ModelAbstractItem;, "Lcom/mikepenz/fastadapter/items/ModelAbstractItem<TModel;TItem;TVH;>;"
    .local p1, "model":Ljava/lang/Object;, "TModel;"
    iput-object p1, p0, Lcom/mikepenz/fastadapter/items/ModelAbstractItem;->mModel:Ljava/lang/Object;

    .line 24
    return-object p0
.end method
