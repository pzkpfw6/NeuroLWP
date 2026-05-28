.class final synthetic Lorg/kustom/api/preset/glide/PresetFileModelLoader$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/Option$CacheKeyUpdater;


# static fields
.field static final $instance:Lcom/bumptech/glide/load/Option$CacheKeyUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/kustom/api/preset/glide/PresetFileModelLoader$$Lambda$0;

    invoke-direct {v0}, Lorg/kustom/api/preset/glide/PresetFileModelLoader$$Lambda$0;-><init>()V

    sput-object v0, Lorg/kustom/api/preset/glide/PresetFileModelLoader$$Lambda$0;->$instance:Lcom/bumptech/glide/load/Option$CacheKeyUpdater;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update([BLjava/lang/Object;Ljava/security/MessageDigest;)V
    .locals 0

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {p1, p2, p3}, Lorg/kustom/api/preset/glide/PresetFileModelLoader;->lambda$static$0$PresetFileModelLoader([BLjava/lang/Boolean;Ljava/security/MessageDigest;)V

    return-void
.end method
