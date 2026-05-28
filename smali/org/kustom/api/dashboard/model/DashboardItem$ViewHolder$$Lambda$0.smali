.class final synthetic Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/graphics/Palette$PaletteAsyncListener;


# instance fields
.field private final arg$1:Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;


# direct methods
.method constructor <init>(Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder$$Lambda$0;->arg$1:Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;

    return-void
.end method


# virtual methods
.method public onGenerated(Landroid/support/v7/graphics/Palette;)V
    .locals 1

    iget-object v0, p0, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder$$Lambda$0;->arg$1:Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;

    invoke-virtual {v0, p1}, Lorg/kustom/api/dashboard/model/DashboardItem$ViewHolder;->lambda$onBitmapSet$0$DashboardItem$ViewHolder(Landroid/support/v7/graphics/Palette;)V

    return-void
.end method
