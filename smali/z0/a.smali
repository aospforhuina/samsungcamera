.class public final Lz0/a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz0/a$f;,
        Lz0/a$b;,
        Lz0/a$g;,
        Lz0/a$c;,
        Lz0/a$d;,
        Lz0/a$a;,
        Lz0/a$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lz0/a$d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lz0/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz0/a$a<",
            "*TO;>;"
        }
    .end annotation
.end field

.field private final b:Lz0/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz0/a$g<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lz0/a$a;Lz0/a$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lz0/a$f;",
            ">(",
            "Ljava/lang/String;",
            "Lz0/a$a<",
            "TC;TO;>;",
            "Lz0/a$g<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Cannot construct an Api with a null ClientBuilder"

    invoke-static {p2, v0}, Lb1/p;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cannot construct an Api with a null ClientKey"

    .line 2
    invoke-static {p3, v0}, Lb1/p;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lz0/a;->c:Ljava/lang/String;

    iput-object p2, p0, Lz0/a;->a:Lz0/a$a;

    iput-object p3, p0, Lz0/a;->b:Lz0/a$g;

    return-void
.end method


# virtual methods
.method public final a()Lz0/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz0/a$a<",
            "*TO;>;"
        }
    .end annotation

    iget-object p0, p0, Lz0/a;->a:Lz0/a$a;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz0/a;->c:Ljava/lang/String;

    return-object p0
.end method
