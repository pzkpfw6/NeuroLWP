.class public final Lcom/bumptech/glide/load/resource/UnitTransformation;
.super Ljava/lang/Object;
.source "UnitTransformation.java"

# interfaces
.implements Lcom/bumptech/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Transformation",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TRANSFORMATION:Lcom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Transformation",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/bumptech/glide/load/resource/UnitTransformation;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/UnitTransformation;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/UnitTransformation;->TRANSFORMATION:Lcom/bumptech/glide/load/Transformation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    .local p0, "this":Lcom/bumptech/glide/load/resource/UnitTransformation;, "Lcom/bumptech/glide/load/resource/UnitTransformation<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static get()Lcom/bumptech/glide/load/resource/UnitTransformation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/resource/UnitTransformation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 24
    sget-object v0, Lcom/bumptech/glide/load/resource/UnitTransformation;->TRANSFORMATION:Lcom/bumptech/glide/load/Transformation;

    check-cast v0, Lcom/bumptech/glide/load/resource/UnitTransformation;

    return-object v0
.end method


# virtual methods
.method public transform(Landroid/content/Context;Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/engine/Resource;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;II)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/bumptech/glide/load/resource/UnitTransformation;, "Lcom/bumptech/glide/load/resource/UnitTransformation<TT;>;"
    .local p2, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TT;>;"
    return-object p2
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 0
    .param p1, "messageDigest"    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/load/resource/UnitTransformation;, "Lcom/bumptech/glide/load/resource/UnitTransformation<TT;>;"
    return-void
.end method
