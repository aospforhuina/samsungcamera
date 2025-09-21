.class public final Ln1/e;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"


# static fields
.field public static final a:Lz0/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz0/a$g<",
            "Lo1/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lz0/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz0/a$g<",
            "Lo1/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lz0/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz0/a$a<",
            "Lo1/a;",
            "Ln1/a;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Lz0/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz0/a$a<",
            "Lo1/a;",
            "Ln1/d;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/google/android/gms/common/api/Scope;

.field public static final f:Lcom/google/android/gms/common/api/Scope;

.field public static final g:Lz0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz0/a<",
            "Ln1/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lz0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz0/a<",
            "Ln1/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lz0/a$g;

    invoke-direct {v0}, Lz0/a$g;-><init>()V

    sput-object v0, Ln1/e;->a:Lz0/a$g;

    new-instance v1, Lz0/a$g;

    invoke-direct {v1}, Lz0/a$g;-><init>()V

    sput-object v1, Ln1/e;->b:Lz0/a$g;

    new-instance v2, Ln1/b;

    invoke-direct {v2}, Ln1/b;-><init>()V

    sput-object v2, Ln1/e;->c:Lz0/a$a;

    new-instance v3, Ln1/c;

    invoke-direct {v3}, Ln1/c;-><init>()V

    sput-object v3, Ln1/e;->d:Lz0/a$a;

    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    const-string v5, "profile"

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v4, Ln1/e;->e:Lcom/google/android/gms/common/api/Scope;

    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    const-string v5, "email"

    .line 2
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v4, Ln1/e;->f:Lcom/google/android/gms/common/api/Scope;

    new-instance v4, Lz0/a;

    const-string v5, "SignIn.API"

    .line 3
    invoke-direct {v4, v5, v2, v0}, Lz0/a;-><init>(Ljava/lang/String;Lz0/a$a;Lz0/a$g;)V

    sput-object v4, Ln1/e;->g:Lz0/a;

    new-instance v0, Lz0/a;

    const-string v2, "SignIn.INTERNAL_API"

    .line 4
    invoke-direct {v0, v2, v3, v1}, Lz0/a;-><init>(Ljava/lang/String;Lz0/a$a;Lz0/a$g;)V

    sput-object v0, Ln1/e;->h:Lz0/a;

    return-void
.end method
