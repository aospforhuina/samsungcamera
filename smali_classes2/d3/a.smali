.class public final Ld3/a;
.super Ljava/lang/Object;
.source "DonationImpl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld3/a$a;
    }
.end annotation


# static fields
.field public static final d:Ld3/a$a;


# instance fields
.field private final a:Lc3/a;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld3/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld3/a$a;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Ld3/a;->d:Ld3/a$a;

    return-void
.end method

.method public constructor <init>(Lc3/a;)V
    .locals 1

    const-string v0, "contentServiceCaller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld3/a;->a:Lc3/a;

    const-string p1, "DonationImpl"

    .line 2
    iput-object p1, p0, Ld3/a;->b:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const-string v0, "newSingleThreadExecutor()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ld3/a;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
