.class public final Lc7/c0$a;
.super Ln6/b;
.source "CoroutineDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc7/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln6/b<",
        "Ln6/e;",
        "Lc7/c0;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Ln6/e;->j:Ln6/e$b;

    .line 2
    sget-object v1, Lc7/c0$a$a;->a:Lc7/c0$a$a;

    .line 3
    invoke-direct {p0, v0, v1}, Ln6/b;-><init>(Ln6/g$c;Lu6/l;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/g;)V
    .locals 0

    invoke-direct {p0}, Lc7/c0$a;-><init>()V

    return-void
.end method
