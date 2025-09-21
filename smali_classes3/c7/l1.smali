.class public interface abstract Lc7/l1;
.super Ljava/lang/Object;
.source "Job.kt"

# interfaces
.implements Ln6/g$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc7/l1$b;,
        Lc7/l1$a;
    }
.end annotation


# static fields
.field public static final h:Lc7/l1$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lc7/l1$b;->a:Lc7/l1$b;

    sput-object v0, Lc7/l1;->h:Lc7/l1$b;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/util/concurrent/CancellationException;)V
.end method

.method public abstract b(ZZLu6/l;)Lc7/u0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lu6/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lk6/q;",
            ">;)",
            "Lc7/u0;"
        }
    .end annotation
.end method

.method public abstract d(Lc7/s;)Lc7/q;
.end method

.method public abstract f()Ljava/util/concurrent/CancellationException;
.end method

.method public abstract isActive()Z
.end method

.method public abstract start()Z
.end method
