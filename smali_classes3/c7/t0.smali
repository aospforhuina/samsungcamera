.class public final Lc7/t0;
.super Ljava/lang/Object;
.source "Dispatchers.kt"


# static fields
.field public static final a:Lc7/t0;

.field private static final b:Lc7/c0;

.field private static final c:Lc7/c0;

.field private static final d:Lc7/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc7/t0;

    invoke-direct {v0}, Lc7/t0;-><init>()V

    sput-object v0, Lc7/t0;->a:Lc7/t0;

    .line 1
    sget-object v0, Lkotlinx/coroutines/scheduling/c;->k:Lkotlinx/coroutines/scheduling/c;

    sput-object v0, Lc7/t0;->b:Lc7/c0;

    .line 2
    sget-object v0, Lc7/f2;->a:Lc7/f2;

    sput-object v0, Lc7/t0;->c:Lc7/c0;

    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/b;->b:Lkotlinx/coroutines/scheduling/b;

    sput-object v0, Lc7/t0;->d:Lc7/c0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lc7/c0;
    .locals 1

    sget-object v0, Lc7/t0;->b:Lc7/c0;

    return-object v0
.end method

.method public static final b()Lc7/c0;
    .locals 1

    sget-object v0, Lc7/t0;->d:Lc7/c0;

    return-object v0
.end method

.method public static final c()Lc7/v1;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/internal/s;->c:Lc7/v1;

    return-object v0
.end method
