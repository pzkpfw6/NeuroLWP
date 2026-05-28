.class public Lcom/mikepenz/fastadapter/adapters/ItemAdapter;
.super Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
.source "ItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Lcom/mikepenz/fastadapter/adapters/ModelAdapter",
        "<TItem;TItem;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    .local p0, "this":Lcom/mikepenz/fastadapter/adapters/ItemAdapter;, "Lcom/mikepenz/fastadapter/adapters/ItemAdapter<TItem;>;"
    sget-object v0, Lcom/mikepenz/fastadapter/IInterceptor;->DEFAULT:Lcom/mikepenz/fastadapter/IInterceptor;

    invoke-direct {p0, v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;-><init>(Lcom/mikepenz/fastadapter/IInterceptor;)V

    .line 14
    return-void
.end method

.method public static items()Lcom/mikepenz/fastadapter/adapters/ItemAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lcom/mikepenz/fastadapter/IItem;",
            ">()",
            "Lcom/mikepenz/fastadapter/adapters/ItemAdapter",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    invoke-direct {v0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;-><init>()V

    return-object v0
.end method
