.class final synthetic Lorg/kustom/api/dashboard/model/DashboardPresetItem$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/kustom/api/dashboard/utils/WallpaperBitmapLoader$Callback;


# instance fields
.field private final arg$1:Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;


# direct methods
.method constructor <init>(Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/kustom/api/dashboard/model/DashboardPresetItem$$Lambda$1;->arg$1:Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;

    return-void
.end method


# virtual methods
.method public onBitmapLoaded(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lorg/kustom/api/dashboard/model/DashboardPresetItem$$Lambda$1;->arg$1:Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;

    invoke-static {v0, p1}, Lorg/kustom/api/dashboard/model/DashboardPresetItem;->lambda$bindView$1$DashboardPresetItem(Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;Landroid/graphics/Bitmap;)V

    return-void
.end method
