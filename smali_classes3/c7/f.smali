.class public final Lc7/f;
.super Lc7/x0;
.source "EventLoop.kt"


# instance fields
.field private final g:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc7/x0;-><init>()V

    .line 2
    iput-object p1, p0, Lc7/f;->g:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method protected H()Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lc7/f;->g:Ljava/lang/Thread;

    return-object p0
.end method
