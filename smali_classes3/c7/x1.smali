.class public final Lc7/x1;
.super Ljava/lang/Object;
.source "Job.kt"

# interfaces
.implements Lc7/u0;
.implements Lc7/q;


# static fields
.field public static final a:Lc7/x1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc7/x1;

    invoke-direct {v0}, Lc7/x1;-><init>()V

    sput-object v0, Lc7/x1;->a:Lc7/x1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "NonDisposableHandle"

    return-object p0
.end method
