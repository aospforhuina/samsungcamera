.class public final Li1/d;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"


# static fields
.field public static final a:Ly0/c;

.field public static final b:[Ly0/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ly0/c;

    const-string v1, "CLIENT_TELEMETRY"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Ly0/c;-><init>(Ljava/lang/String;J)V

    sput-object v0, Li1/d;->a:Ly0/c;

    const/4 v1, 0x1

    new-array v1, v1, [Ly0/c;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Li1/d;->b:[Ly0/c;

    return-void
.end method
