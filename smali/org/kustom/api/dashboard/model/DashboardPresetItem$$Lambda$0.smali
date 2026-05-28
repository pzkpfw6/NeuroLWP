.class final synthetic Lorg/kustom/api/dashboard/model/DashboardPresetItem$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/kustom/api/preset/PresetInfoLoader$Callback;


# instance fields
.field private final arg$1:Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;


# direct methods
.method constructor <init>(Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/kustom/api/dashboard/model/DashboardPresetItem$$Lambda$0;->arg$1:Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;

    return-void
.end method


# virtual methods
.method public onInfoLoaded(Lorg/kustom/api/preset/PresetInfo;)V
    .locals 1

    iget-object v0, p0, Lorg/kustom/api/dashboard/model/DashboardPresetItem$$Lambda$0;->arg$1:Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;

    invoke-static {v0, p1}, Lorg/kustom/api/dashboard/model/DashboardPresetItem;->lambda$bindView$0$DashboardPresetItem(Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;Lorg/kustom/api/preset/PresetInfo;)V

    return-void
.end method
