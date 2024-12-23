# team8

2024 GDGfs RE:ALThon

## 👥Contributors: Team8
|🖥️Flutter Environment|
|:---:|
|<img src="https://github.com/fivebellhyun.png">|
|[Jonghyun Oh](https://github.com/fivebellhyun)|

# 프로젝트 설명

이 프로젝트는 **클린 아키텍처** 패턴을 따르고 있으며, 데이터, 도메인, 프레젠테이션 레이어를 분리하여 관리합니다.</br>
이는 유지보수성, 테스트 가능성, 확장성을 높여주며, 비즈니스 로직을 UI나 외부 의존성에서 독립적으로 유지하게 합니다.

## Getting Started

1. Flutter SDK 버전: 3.24.3
2. 빌드 OS: Android, iOS
3. IDE: Android Studio, VS Code, Xcode
4. 패키지 관리: Flutter pub

## 파일 네이밍 규칙

파일은 크게 3가지 파트로 나누어져 있습니다: **파일 이름**, **파일 역할**, **파일 확장자**. 이는 다음과 같이 구성됩니다:

```
{파일 이름}_{파일 역할}.{파일 확장자}
```

## 아키텍처 설명

### 도메인 레이어

도메인 레이어는 비즈니스 로직 엔티티, 유스케이스, 리포지토리 인터페이스를 포함합니다. 앱의 핵심 기능을 정의하며, 외부 라이브러리나 프레임워크에 의존하지 않지 않는 것이 정석입니다.</br>
이 프로젝트에서는 간소화를 위해 도메인 레이어는 사용하지 않습니다.

### 데이터 레이어 (Persistence)

데이터 레이어는 도메인 레이어에서 정의된 계약을 구현하며, 외부 데이터 소스(API, 로컬 스토리지 등)와 상호작용합니다.

- **Data Sources**: `result_data_source.dart`와 같이, 외부 데이터 소스와의 인터페이스를 정의하는
  클래스와 구현체가 있습니다. 구현체 파일의 경우 어느 데이터 소스를 사용할지가 파일 이름에 명시되어 있습니다.
- **models**: 데이터 전송 객체(DTO)로, 레이어 간 데이터 전송 시 사용됩니다. 예: `result_model.dart`.

### 프레젠테이션 레이어

프레젠테이션 레이어는 UI 관련 컴포넌트와 뷰 모델을 포함합니다. 사용자와 상호작용하는 앱의 부분입니다.

- **Views**: 사용자가 상호작용하는 UI 뷰가 정의된 곳으로, `home_screen.dart`, `result_screen.dart` 같은 파일들이
  있습니다.
- **View Models**: UI가 동작하기 위한 상태와 로직이 포함되어 있으며, 예를 들어 `result_viewmodel.dart`는 결과 프로세스와 관련된 로직을
  처리합니다.
- **Widgets**: 해당 feature 와 연관이 있지만, page 와 state view 에 종속되지 않는 위젯들이 있습니다.

## Git 커밋 메시지 규칙

- **Tag Name**: 커밋의 목적을 나타내는 태그입니다.
- **Scope**: 선택 사항이며, 작업 범위를 지정할 수 있습니다. (예: `feat(users)`, `fix(auth)`)
- **Subject**: 태그 뒤에 간결한 설명을 작성합니다. (50자 내외)

### Tag 설명

| Tag Name             | Description                            |
|----------------------|----------------------------------------|
| **feat**             | 새로운 기능을 추가                             |
| **fix**              | 버그 수정                                  |
| **design**           | CSS 등 사용자 UI 디자인 변경                    |
| **!BREAKING CHANGE** | 커다란 API 변경 또는 호환성에 큰 영향이 있는 경우         |
| **!HOTFIX**          | 급하게 치명적인 버그를 수정해야 할 때                  |
| **style**            | 코드 포맷 변경, 세미콜론 누락 등, 코드의 동작에 영향이 없는 경우 |
| **refactor**         | 프로덕션 코드 리팩토링 (기능 변경 없이 구조 개선)          |
| **comment**          | 주석 추가 및 변경                             |
| **docs**             | 문서 수정 (README.md 등의 문서 수정)             |
| **test**             | 테스트 코드 추가 또는 리팩토링                      |
| **chore**            | 빌드 작업 업데이트, 패키지 관리자 설정 변경 등            |
| **rename**           | 파일이나 폴더명 수정 및 이동                       |
| **remove**           | 파일 삭제 작업                               |
| **merge**            | 브랜치 병합 커밋                              |
| **revert**           | 이전 커밋을 취소할 때 사용                        |

### 커밋 메시지 작성 규칙

1. **Tag와 Scope**는 콜론(`:`)으로 구분하며, 태그는 소문자로 작성합니다.
    - 예: `[FEAT(users)] add user login feature`
2. **Subject**는 50자 이내로 간결하고 명확하게 작성합니다.
3. **Body**는 선택 사항이지만, 필요한 경우 커밋의 상세 내용을 작성할 수 있습니다. 72자 이하로 작성하는 것이 좋습니다.
4. **BREAKING CHANGE**는 커다란 변경 사항이 발생할 때 사용하며, commit body에 해당 변경에 대한 상세 설명을 포함해야 합니다.
5. **HOTFIX**는 급한 수정 사항에만 사용하며, 꼭 필요한 경우에만 사용합니다.

### 예제

```text
feat(auth): OAuth2.0 로그인 기능 추가

- 구글과 페이스북을 통한 OAuth2.0 로그인 기능을 구현했습니다.
- 인증 모듈에 필요한 의존성을 업데이트했습니다.
```

```text
fix(users): 사용자 프로필 사진 업로드 문제 수정

- 큰 이미지 파일이 제대로 업로드되지 않는 문제를 해결했습니다.
- 서버 측에서 이미지 크기 검증을 추가했습니다.
```

```text
!BREAKING CHANGE: 사용자 인증을 위한 API 계약 변경

- `/auth/login` 엔드포인트에 추가 보안 헤더가 필요합니다.
- 이 변경 사항은 이전 클라이언트와의 호환성을 깨뜨립니다. 반드시 업데이트가 필요합니다.
```

```text
!HOTFIX: 결제 처리 중 발생한 치명적인 버그 수정

- 결제 처리 중 트랜잭션이 실패하는 심각한 문제를 수정했습니다.
```