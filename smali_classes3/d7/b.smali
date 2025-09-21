.class public final Ld7/b;
.super Ln6/a;
.source "AndroidExceptionPreHandler.kt"

# interfaces
.implements Lc7/d0;


# instance fields
.field private volatile _preHandler:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lc7/d0;->e:Lc7/d0$a;

    invoke-direct {p0, v0}, Ln6/a;-><init>(Ln6/g$c;)V

    .line 2
    iput-object p0, p0, Ld7/b;->_preHandler:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public k(Ln6/g;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
