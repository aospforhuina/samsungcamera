.class public final Lp1/g;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@18.0.1"


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field static final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp1/o;

    invoke-direct {v0}, Lp1/o;-><init>()V

    sput-object v0, Lp1/g;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lp1/n;

    invoke-direct {v0}, Lp1/n;-><init>()V

    sput-object v0, Lp1/g;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
