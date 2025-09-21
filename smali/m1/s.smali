.class final Lm1/s;
.super Lz0/a$a;
.source "com.google.android.gms:play-services-location@@20.0.0"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz0/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;Landroid/os/Looper;Lb1/e;Ljava/lang/Object;La1/d;La1/j;)Lz0/a$f;
    .locals 7

    .line 1
    check-cast p4, Lz0/a$d$c;

    .line 2
    new-instance p0, Lk1/r;

    const-string v6, "locationServices"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lk1/r;-><init>(Landroid/content/Context;Landroid/os/Looper;Lb1/e;La1/d;La1/j;Ljava/lang/String;)V

    return-object p0
.end method
