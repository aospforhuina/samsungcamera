.class public interface abstract Ln6/e;
.super Ljava/lang/Object;
.source "ContinuationInterceptor.kt"

# interfaces
.implements Ln6/g$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln6/e$b;,
        Ln6/e$a;
    }
.end annotation


# static fields
.field public static final j:Ln6/e$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ln6/e$b;->a:Ln6/e$b;

    sput-object v0, Ln6/e;->j:Ln6/e$b;

    return-void
.end method


# virtual methods
.method public abstract interceptContinuation(Ln6/d;)Ln6/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ln6/d<",
            "-TT;>;)",
            "Ln6/d<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract releaseInterceptedContinuation(Ln6/d;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln6/d<",
            "*>;)V"
        }
    .end annotation
.end method
