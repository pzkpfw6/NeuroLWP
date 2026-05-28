.class public interface abstract Lcom/mikepenz/fastadapter/commons/utils/DiffCallback;
.super Ljava/lang/Object;
.source "DiffCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;TItem;)Z"
        }
    .end annotation
.end method

.method public abstract areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;TItem;)Z"
        }
    .end annotation
.end method

.method public abstract getChangePayload(Ljava/lang/Object;ILjava/lang/Object;I)Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;ITItem;I)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
