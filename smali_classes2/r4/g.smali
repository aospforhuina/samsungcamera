.class final Lr4/g;
.super Ljava/lang/Object;
.source "TaskExecutors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr4/g$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field static final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lr4/g$a;

    invoke-direct {v0}, Lr4/g$a;-><init>()V

    sput-object v0, Lr4/g;->a:Ljava/util/concurrent/Executor;

    .line 2
    new-instance v0, Lr4/a;

    invoke-direct {v0}, Lr4/a;-><init>()V

    sput-object v0, Lr4/g;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
