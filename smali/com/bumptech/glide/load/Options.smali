.class public final Lcom/bumptech/glide/load/Options;
.super Ljava/lang/Object;
.source "Options.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# instance fields
.field private final values:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Lcom/bumptech/glide/load/Option",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/Options;->values:Landroid/support/v4/util/ArrayMap;

    return-void
.end method

.method private static updateDiskCacheKey(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;Ljava/security/MessageDigest;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "md"    # Ljava/security/MessageDigest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option",
            "<TT;>;",
            "Ljava/lang/Object;",
            "Ljava/security/MessageDigest;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "option":Lcom/bumptech/glide/load/Option;, "Lcom/bumptech/glide/load/Option<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/Option;->update(Ljava/lang/Object;Ljava/security/MessageDigest;)V

    .line 61
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 30
    instance-of v1, p1, Lcom/bumptech/glide/load/Options;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 31
    check-cast v0, Lcom/bumptech/glide/load/Options;

    .line 32
    .local v0, "other":Lcom/bumptech/glide/load/Options;
    iget-object v1, p0, Lcom/bumptech/glide/load/Options;->values:Landroid/support/v4/util/ArrayMap;

    iget-object v2, v0, Lcom/bumptech/glide/load/Options;->values:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/support/v4/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 34
    .end local v0    # "other":Lcom/bumptech/glide/load/Options;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "option":Lcom/bumptech/glide/load/Option;, "Lcom/bumptech/glide/load/Option<TT;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/Options;->values:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/Options;->values:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/bumptech/glide/load/Option;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/bumptech/glide/load/Options;->values:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public putAll(Lcom/bumptech/glide/load/Options;)V
    .locals 2
    .param p1, "other"    # Lcom/bumptech/glide/load/Options;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/bumptech/glide/load/Options;->values:Landroid/support/v4/util/ArrayMap;

    iget-object v1, p1, Lcom/bumptech/glide/load/Options;->values:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->putAll(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 16
    return-void
.end method

.method public set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/load/Options;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option",
            "<TT;>;TT;)",
            "Lcom/bumptech/glide/load/Options;"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "option":Lcom/bumptech/glide/load/Option;, "Lcom/bumptech/glide/load/Option<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/bumptech/glide/load/Options;->values:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Options{values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/Options;->values:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 4
    .param p1, "messageDigest"    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/bumptech/glide/load/Options;->values:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 45
    iget-object v3, p0, Lcom/bumptech/glide/load/Options;->values:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/Option;

    .line 46
    .local v1, "key":Lcom/bumptech/glide/load/Option;, "Lcom/bumptech/glide/load/Option<*>;"
    iget-object v3, p0, Lcom/bumptech/glide/load/Options;->values:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 47
    .local v2, "value":Ljava/lang/Object;
    invoke-static {v1, v2, p1}, Lcom/bumptech/glide/load/Options;->updateDiskCacheKey(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;Ljava/security/MessageDigest;)V

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    .end local v1    # "key":Lcom/bumptech/glide/load/Option;, "Lcom/bumptech/glide/load/Option<*>;"
    .end local v2    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method
