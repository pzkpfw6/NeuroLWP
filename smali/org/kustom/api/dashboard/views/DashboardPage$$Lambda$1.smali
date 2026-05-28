.class final synthetic Lorg/kustom/api/dashboard/views/DashboardPage$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lorg/kustom/api/dashboard/views/DashboardPage;

.field private final arg$2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/kustom/api/dashboard/views/DashboardPage;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/kustom/api/dashboard/views/DashboardPage$$Lambda$1;->arg$1:Lorg/kustom/api/dashboard/views/DashboardPage;

    iput-object p2, p0, Lorg/kustom/api/dashboard/views/DashboardPage$$Lambda$1;->arg$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/kustom/api/dashboard/views/DashboardPage$$Lambda$1;->arg$1:Lorg/kustom/api/dashboard/views/DashboardPage;

    iget-object v1, p0, Lorg/kustom/api/dashboard/views/DashboardPage$$Lambda$1;->arg$2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/kustom/api/dashboard/views/DashboardPage;->lambda$setText$1$DashboardPage(Ljava/lang/String;)V

    return-void
.end method
