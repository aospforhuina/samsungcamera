.class public final Ld1/d;
.super Lz0/e;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lb1/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz0/e<",
        "Lb1/v;",
        ">;",
        "Lb1/u;"
    }
.end annotation


# static fields
.field private static final k:Lz0/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz0/a$g<",
            "Ld1/e;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Lz0/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz0/a$a<",
            "Ld1/e;",
            "Lb1/v;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Lz0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz0/a<",
            "Lb1/v;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic n:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lz0/a$g;

    invoke-direct {v0}, Lz0/a$g;-><init>()V

    sput-object v0, Ld1/d;->k:Lz0/a$g;

    new-instance v1, Ld1/c;

    invoke-direct {v1}, Ld1/c;-><init>()V

    sput-object v1, Ld1/d;->l:Lz0/a$a;

    new-instance v2, Lz0/a;

    const-string v3, "ClientTelemetry.API"

    invoke-direct {v2, v3, v1, v0}, Lz0/a;-><init>(Ljava/lang/String;Lz0/a$a;Lz0/a$g;)V

    sput-object v2, Ld1/d;->m:Lz0/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lb1/v;)V
    .locals 2

    sget-object v0, Ld1/d;->m:Lz0/a;

    sget-object v1, Lz0/e$a;->c:Lz0/e$a;

    invoke-direct {p0, p1, v0, p2, v1}, Lz0/e;-><init>(Landroid/content/Context;Lz0/a;Lz0/a$d;Lz0/e$a;)V

    return-void
.end method


# virtual methods
.method public final a(Lb1/s;)Lp1/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb1/s;",
            ")",
            "Lp1/e<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/api/internal/c;->a()Lcom/google/android/gms/common/api/internal/c$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ly0/c;

    sget-object v2, Li1/d;->a:Ly0/c;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/c$a;->d([Ly0/c;)Lcom/google/android/gms/common/api/internal/c$a;

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/api/internal/c$a;->c(Z)Lcom/google/android/gms/common/api/internal/c$a;

    new-instance v1, Ld1/b;

    invoke-direct {v1, p1}, Ld1/b;-><init>(Lb1/s;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/c$a;->b(La1/k;)Lcom/google/android/gms/common/api/internal/c$a;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/c$a;->a()Lcom/google/android/gms/common/api/internal/c;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lz0/e;->c(Lcom/google/android/gms/common/api/internal/c;)Lp1/e;

    move-result-object p0

    return-object p0
.end method
