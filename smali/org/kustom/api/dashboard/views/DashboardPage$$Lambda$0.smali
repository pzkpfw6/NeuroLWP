.class final synthetic Lorg/kustom/api/dashboard/views/DashboardPage$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lorg/kustom/api/dashboard/views/DashboardPage;

.field private final arg$2:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/kustom/api/dashboard/views/DashboardPage;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/kustom/api/dashboard/views/DashboardPage$$Lambda$0;->arg$1:Lorg/kustom/api/dashboard/views/DashboardPage;

    iput-object p2, p0, Lorg/kustom/api/dashboard/views/DashboardPage$$Lambda$0;->arg$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/kustom/api/dashboard/views/DashboardPage$$Lambda$0;->arg$1:Lorg/kustom/api/dashboard/views/DashboardPage;

    iget-object v1, p0, Lorg/kustom/api/dashboard/views/DashboardPage$$Lambda$0;->arg$2:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/kustom/api/dashboard/views/DashboardPage;->lambda$setEntries$0$DashboardPage(Ljava/util/List;)V

    return-void
.end method
