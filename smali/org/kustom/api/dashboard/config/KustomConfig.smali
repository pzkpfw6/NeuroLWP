.class public Lorg/kustom/api/dashboard/config/KustomConfig;
.super Ljava/lang/Object;
.source "KustomConfig.java"


# static fields
.field public static final ENV_KLCK:Lorg/kustom/api/dashboard/config/KustomEnv;

.field public static final ENV_KLWP:Lorg/kustom/api/dashboard/config/KustomEnv;

.field public static final ENV_KOMP:Lorg/kustom/api/dashboard/config/KustomEnv;

.field public static final ENV_KWCH:Lorg/kustom/api/dashboard/config/KustomEnv;

.field public static final ENV_KWGT:Lorg/kustom/api/dashboard/config/KustomEnv;

.field private static final sEnvs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/kustom/api/dashboard/config/KustomEnv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .local v0, "envs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/kustom/api/dashboard/config/KustomEnv;>;"
    const-string v1, "kwgt"

    new-instance v2, Lorg/kustom/api/dashboard/config/KustomEnv;

    const-string v3, "kwgt"

    const-string v4, "widgets"

    const-string v5, "org.kustom.widget"

    const-string v6, "org.kustom.widget.picker.WidgetPicker"

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/kustom/api/dashboard/config/KustomEnv;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v1, "klwp"

    new-instance v2, Lorg/kustom/api/dashboard/config/KustomEnv;

    const-string v3, "klwp"

    const-string v4, "wallpapers"

    const-string v5, "org.kustom.wallpaper"

    const-string v6, "org.kustom.lib.editor.WpAdvancedEditorActivity"

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/kustom/api/dashboard/config/KustomEnv;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v1, "klck"

    new-instance v2, Lorg/kustom/api/dashboard/config/KustomEnv;

    const-string v3, "klck"

    const-string v4, "lockscreens"

    const-string v5, "org.kustom.lockscreen"

    const-string v6, "org.kustom.lib.editor.LockAdvancedEditorActivity"

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/kustom/api/dashboard/config/KustomEnv;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v1, "kwch"

    new-instance v2, Lorg/kustom/api/dashboard/config/KustomEnv;

    const-string v3, "kwch"

    const-string v4, "watches"

    const-string v5, "org.kustom.watch"

    const-string v6, "TBD"

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/kustom/api/dashboard/config/KustomEnv;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v1, "komp"

    new-instance v2, Lorg/kustom/api/dashboard/config/KustomEnv;

    const-string v3, "komp"

    const-string v4, "komponents"

    invoke-direct {v2, v3, v4, v7, v7}, Lorg/kustom/api/dashboard/config/KustomEnv;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lorg/kustom/api/dashboard/config/KustomConfig;->sEnvs:Ljava/util/Map;

    .line 50
    sget-object v1, Lorg/kustom/api/dashboard/config/KustomConfig;->sEnvs:Ljava/util/Map;

    const-string v2, "kwgt"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/kustom/api/dashboard/config/KustomEnv;

    sput-object v1, Lorg/kustom/api/dashboard/config/KustomConfig;->ENV_KWGT:Lorg/kustom/api/dashboard/config/KustomEnv;

    .line 51
    sget-object v1, Lorg/kustom/api/dashboard/config/KustomConfig;->sEnvs:Ljava/util/Map;

    const-string v2, "klck"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/kustom/api/dashboard/config/KustomEnv;

    sput-object v1, Lorg/kustom/api/dashboard/config/KustomConfig;->ENV_KLCK:Lorg/kustom/api/dashboard/config/KustomEnv;

    .line 52
    sget-object v1, Lorg/kustom/api/dashboard/config/KustomConfig;->sEnvs:Ljava/util/Map;

    const-string v2, "klwp"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/kustom/api/dashboard/config/KustomEnv;

    sput-object v1, Lorg/kustom/api/dashboard/config/KustomConfig;->ENV_KLWP:Lorg/kustom/api/dashboard/config/KustomEnv;

    .line 53
    sget-object v1, Lorg/kustom/api/dashboard/config/KustomConfig;->sEnvs:Ljava/util/Map;

    const-string v2, "kwch"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/kustom/api/dashboard/config/KustomEnv;

    sput-object v1, Lorg/kustom/api/dashboard/config/KustomConfig;->ENV_KWCH:Lorg/kustom/api/dashboard/config/KustomEnv;

    .line 54
    sget-object v1, Lorg/kustom/api/dashboard/config/KustomConfig;->sEnvs:Ljava/util/Map;

    const-string v2, "komp"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/kustom/api/dashboard/config/KustomEnv;

    sput-object v1, Lorg/kustom/api/dashboard/config/KustomConfig;->ENV_KOMP:Lorg/kustom/api/dashboard/config/KustomEnv;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static getEnv(Ljava/lang/String;)Lorg/kustom/api/dashboard/config/KustomEnv;
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 66
    sget-object v0, Lorg/kustom/api/dashboard/config/KustomConfig;->sEnvs:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/kustom/api/dashboard/config/KustomEnv;

    return-object v0
.end method

.method public static getExtensions()Ljava/util/Set;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    sget-object v0, Lorg/kustom/api/dashboard/config/KustomConfig;->sEnvs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
