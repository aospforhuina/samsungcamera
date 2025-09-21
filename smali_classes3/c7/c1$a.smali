.class public final Lc7/c1$a;
.super Ln6/b;
.source "Executors.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc7/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln6/b<",
        "Lc7/c0;",
        "Lc7/c1;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lc7/c0;->Key:Lc7/c0$a;

    .line 2
    sget-object v1, Lc7/c1$a$a;->a:Lc7/c1$a$a;

    .line 3
    invoke-direct {p0, v0, v1}, Ln6/b;-><init>(Ln6/g$c;Lu6/l;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/g;)V
    .locals 0

    invoke-direct {p0}, Lc7/c1$a;-><init>()V

    return-void
.end method
