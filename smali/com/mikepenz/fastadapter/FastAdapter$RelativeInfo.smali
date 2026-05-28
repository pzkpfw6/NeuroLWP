.class public Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;
.super Ljava/lang/Object;
.source "FastAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/fastadapter/FastAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RelativeInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public adapter:Lcom/mikepenz/fastadapter/IAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/IAdapter",
            "<TItem;>;"
        }
    .end annotation
.end field

.field public item:Lcom/mikepenz/fastadapter/IItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TItem;"
        }
    .end annotation
.end field

.field public position:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;, "Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo<TItem;>;"
    const/4 v0, 0x0

    .line 1327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1328
    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->adapter:Lcom/mikepenz/fastadapter/IAdapter;

    .line 1329
    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->item:Lcom/mikepenz/fastadapter/IItem;

    .line 1330
    const/4 v0, -0x1

    iput v0, p0, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->position:I

    return-void
.end method
