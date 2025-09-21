.class public final Lh3/a;
.super Ljava/lang/Object;
.source "SmartWidgetImpl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh3/a$a;
    }
.end annotation


# static fields
.field public static final d:Lh3/a$a;


# instance fields
.field private final a:Lc3/a;

.field private final b:Lc3/d;

.field private final c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lh3/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lh3/a$a;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lh3/a;->d:Lh3/a$a;

    return-void
.end method

.method public constructor <init>(Lc3/a;Lc3/d;)V
    .locals 1

    const-string v0, "contentProviderCaller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "systemDataSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh3/a;->a:Lc3/a;

    .line 3
    iput-object p2, p0, Lh3/a;->b:Lc3/d;

    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const-string p2, "newSingleThreadExecutor()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lh3/a;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
