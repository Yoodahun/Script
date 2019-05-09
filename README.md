# Script
Bash Shell Script가 주된 소스입니다... 공부내용이나 제가 직접 만든 것을 올립니다.

Bash Shell Script is the main source ... I upload my own work.

### [fileRenameAndPushToRemoteRepo](/fileRenameAndPushToRemoteRepo.sh)

- Jekyll을 이용한 GithubPages의 포스트를 관리하기 위한 스크립트 입니다.
- 파일 제목에 `YYYY-mm-dd-`형식의 날짜포맷을 추가하고 원하는 폴더로 이동시킵니다.
- 원한다면, 해당 프로젝트를 push하는 스크립트를 동작시킵니다.

### [pushToMasterRemoteRepo](/pushToMasterRemoteRepo.sh)

- 어떤 프로젝트를 Remote Repository에 Push하는 스크립트입니다.
- Commit message는 날짜와 `posting` 이라는 메세지로 되어있습니다.
- 해당 스크립트를 이용하기 위해서는 해당 파일을 관리하고자하는 프로젝트 폴더의 최상위층에 놓아주세요.
- 아무런 에러 핸들링이 없는 파일입니다. 혹시나 원하신다면, 직접 Folk하여 Pull Request를 해주세요!

