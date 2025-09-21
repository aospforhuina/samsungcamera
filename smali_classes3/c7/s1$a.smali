.class final Lc7/s1$a;
.super Lc7/r1;
.source "JobSupport.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc7/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final f:Lc7/s1;

.field private final g:Lc7/s1$b;

.field private final k:Lc7/r;

.field private final l:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc7/s1;Lc7/s1$b;Lc7/r;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc7/r1;-><init>()V

    .line 2
    iput-object p1, p0, Lc7/s1$a;->f:Lc7/s1;

    .line 3
    iput-object p2, p0, Lc7/s1$a;->g:Lc7/s1$b;

    .line 4
    iput-object p3, p0, Lc7/s1$a;->k:Lc7/r;

    .line 5
    iput-object p4, p0, Lc7/s1$a;->l:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lc7/s1$a;->v(Ljava/lang/Throwable;)V

    sget-object p0, Lk6/q;->a:Lk6/q;

    return-object p0
.end method

.method public v(Ljava/lang/Throwable;)V
    .locals 2

    iget-object p1, p0, Lc7/s1$a;->f:Lc7/s1;

    iget-object v0, p0, Lc7/s1$a;->g:Lc7/s1$b;

    iget-object v1, p0, Lc7/s1$a;->k:Lc7/r;

    iget-object p0, p0, Lc7/s1$a;->l:Ljava/lang/Object;

    invoke-static {p1, v0, v1, p0}, Lc7/s1;->v(Lc7/s1;Lc7/s1$b;Lc7/r;Ljava/lang/Object;)V

    return-void
.end method
