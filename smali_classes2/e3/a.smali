.class public final Le3/a;
.super Ljava/lang/Object;
.source "FeedbackRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le3/a$a;
    }
.end annotation


# static fields
.field public static final c:Le3/a$a;

.field private static volatile d:Le3/a;


# instance fields
.field private final a:Lc3/a;

.field private final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le3/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le3/a$a;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Le3/a;->c:Le3/a$a;

    return-void
.end method

.method private constructor <init>(Lc3/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le3/a;->a:Lc3/a;

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const-string v0, "newSingleThreadExecutor()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le3/a;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public synthetic constructor <init>(Lc3/a;Lkotlin/jvm/internal/g;)V
    .locals 0

    invoke-direct {p0, p1}, Le3/a;-><init>(Lc3/a;)V

    return-void
.end method

.method public static final synthetic a()Le3/a;
    .locals 1

    sget-object v0, Le3/a;->d:Le3/a;

    return-object v0
.end method

.method public static final synthetic b(Le3/a;)V
    .locals 0

    sput-object p0, Le3/a;->d:Le3/a;

    return-void
.end method
