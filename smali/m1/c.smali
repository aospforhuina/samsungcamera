.class public Lm1/c;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@20.0.0"


# static fields
.field public static final a:Lz0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz0/a<",
            "Lz0/a$d$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lm1/a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final c:Lm1/b;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final d:Lm1/h;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final e:Lz0/a$g;

.field private static final f:Lz0/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lz0/a$g;

    invoke-direct {v0}, Lz0/a$g;-><init>()V

    sput-object v0, Lm1/c;->e:Lz0/a$g;

    .line 2
    new-instance v1, Lm1/s;

    invoke-direct {v1}, Lm1/s;-><init>()V

    sput-object v1, Lm1/c;->f:Lz0/a$a;

    .line 3
    new-instance v2, Lz0/a;

    const-string v3, "LocationServices.API"

    invoke-direct {v2, v3, v1, v0}, Lz0/a;-><init>(Ljava/lang/String;Lz0/a$a;Lz0/a$g;)V

    sput-object v2, Lm1/c;->a:Lz0/a;

    new-instance v0, Lk1/c0;

    invoke-direct {v0}, Lk1/c0;-><init>()V

    sput-object v0, Lm1/c;->b:Lm1/a;

    new-instance v0, Lk1/b;

    invoke-direct {v0}, Lk1/b;-><init>()V

    sput-object v0, Lm1/c;->c:Lm1/b;

    new-instance v0, Lk1/w;

    invoke-direct {v0}, Lk1/w;-><init>()V

    sput-object v0, Lm1/c;->d:Lm1/h;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lm1/i;
    .locals 1

    new-instance v0, Lm1/i;

    invoke-direct {v0, p0}, Lm1/i;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
